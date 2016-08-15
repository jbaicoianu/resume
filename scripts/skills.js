elation.requireCSS('resume.skills');

elation.require(['ui.base', 'resume.ext.d3', 'resume.ext.drawspline'], function() {
  elation.component.add("resume.skills", function() {
    this.editing = false;
    this.init = function() {
      this.skills = [];

      this.timeline = elation.resume.timeline({append: this.container, range: this.args.range});

      elation.html.addclass(this.container, "skills");

      this.hues = {
        "Programming": 0,
        "Systems": 60,
        "Databases": 160,
        "Skills": 230
      };
      this.groupcolors = {
        "Programming": 'PuOr',
        "Systems": 'BuGn',
        "Databases": 'Reds',
        "Skills": 'Purples'
      };
      this.datasize = 50;
      if (this.args.skills) {
        this.load(this.args.skills);
      }

      this.editor = elation.resume.skills_editor(null, elation.html.create({append: this.container}), {datasize: this.datasize});
      elation.events.add(this.editor, "update", elation.bind(this, this.refresh));
      elation.events.add(window, "resize,orientationchange", elation.bind(this, this.resize));

      this.refresh();
    }
    this.load = function(skills) {
      this.skills = [];
      this.groups = {};
      for (var group in skills) {
        this.groups[group] = [];
        for (var skill in skills[group]) {
          var skill = this.addSkill(group, skill, skills[group][skill]);
          this.groups[group].push(skill);
        }
      }
      if (!this.stack) {
        this.createGraph();
      } else {
        this.refresh();
      }
    }
    this.save = function() {
      var data = {};
      for (var i = 0; i < this.skills.length; i++) { 
        var name = this.skills[i][0].name;
        var group = this.skills[i][0].group;
        if (!data[group]) data[group] = {};
        data[group][name] = [];
        for (var j = 0; j < this.skills[i].length; j++) {
          data[group][name][j] = this.skills[i][j].y; 
        } 
      };
      return data;
    }
    this.addSkill = function(group, skill, data) {
      var realdata = [];
      for (var i = 0; i < this.datasize; i++) {
        data[i] = {x: i, y: (data[i] ? data[i] : 0), group: group, name: skill};
      }
      this.skills.push(data);
      return data;
    }
    this.createGraph = function() {
      this.stack = d3.layout.stack().offset("zero");
      var width = this.container.offsetWidth;
      var height = window.innerHeight / 2;
      var x = d3.scale.linear().domain([0, this.datasize]).range([0, width]);
      var y = d3.scale.linear().domain([0, this.getdatarange()]).range([0, height]);
      this.axes = {x: x, y: y};

      this.layers = this.stack(this.skills);

      this.area = d3.svg.area()
          .x(function(d) { return x(d.x); })
          .y0(function(d) { return y(d.y0); })
          .y1(function(d) { return y(d.y0 + d.y); });

      this.svg = d3.select(this.container).append("svg")
          .attr("width", width)
          .attr("height", height)

  /*
      var color = d3.scale.linear()
          .range(["hsl(0,50%,20%)", "hsl(0,50%,80%)"]);
          //.range(["#aad", "#556"]);
  */
      var color = d3.scale.category20();

      var colors = {};
      for (var group in this.hues) {
        var hue = this.hues[group];
        colors[group] = d3.scale.linear()
          .range(["hsl(" + (hue) + ",50%,60%)", "hsl(" + (hue + 40) + ",60%,60%)"])
          .interpolate(d3.interpolateHsl);
      }

      var hash = function(str) { 
        var val = 5381;
        for (i = 0; i < str.length; i++) {
            char = str.charCodeAt(i);
            val = ((val << 5) + val) + char; /* val * 33 + c */
        }
        val = (val / 4294967296) + .5;
        console.log('hash for ' + str + ' is ' + val);
        return val;
      }

      var groups = this.groups;
      var counts = {};
      for (var k in groups) { 
        counts[k] = 0; 
      }

      var foo = this.svg.selectAll("path")
          .data(this.layers)
        .enter()


      this.paths = foo.append("path")
            .attr("d", this.area)
            .on("mouseover", elation.bind(this, this.highlightSkill))
            .on("mouseout", elation.bind(this, this.unhighlightSkill))
            .on("click", elation.bind(this, this.selectSkill))
            .style("fill", function(data, idx) { var d = data[0]; return colors[d.group](counts[d.group]++ / groups[d.group].length); })
            //.style("fill", function(data, idx) { var d = data[0]; return color(idx); })
            //.attr("class", function(data, idx) { var d = data[0]; return colors[d.group] + ' q' + (8 - (idx % 9)) + '-9'; })
            //.attr("class", function(data, idx) { var d = data[0]; return 'PuOr' + ' q' + (idx % 11) + '-11'; })
            //.attr("class", function(data, idx) { var d = data[0]; var cnt = groups[d.group].length; return colors[d.group] + ' q' + (idx % cnt) + '-' + cnt; })
          .append("title")
            .text(function(d, idx) { return d[idx].group + ": " + d[idx].name; });

      var self = this;
      this.labels = foo.append('text')
            .text(function(data, idx) { return data[0].name; })

      this.updateLabels();
    }
    this.getmaxidx = function(data) {
      var idx = 0;
      for (var i = 1; i < data.length; i++) {
        if (data[i].y > data[idx].y) idx = i;
      }
      return idx;
    }
    this.getdatarange = function() {
      var data = [];
      for (var i = 0; i < this.datasize; i++) {
        data[i] = 0;
        for (var j = 0; j < this.skills.length; j++) {
          data[i] += this.skills[j][i].y;
        }
      }
      var max = Math.max(data.reduce(function(a, b) { return a > b ? a : b; }), 100);
      return max;
    }
    this.render = function() {
      var datarange = this.getdatarange();
      this.axes.y.domain([0, datarange]);
      this.axes.x.range([0, this.container.offsetWidth]);
      this.axes.y.range([0, this.container.offsetHeight]);

      this.layers = this.stack(this.skills);
      this.svg.selectAll("path")
          .data(this.layers)
          .attr("d", this.area)

      this.updateLabels();
    }
    this.updateLabels = function() {
      var self = this,
          width = this.container.offsetWidth;
      var margin = {left: 8, right: 60};

      this.labels
            .attr("x", function(data, idx) { var maxid = self.getmaxidx(data); var bbox = this.getBBox(); return Math.max(margin.left, Math.min(self.axes.x(data[maxid].x) - bbox.width / 2, width - bbox.width - margin.right)); })
            .attr("y", function(data, idx) { var maxid = self.getmaxidx(data); var bbox = this.getBBox(); return self.axes.y(data[maxid].y0 + (data[maxid].y / 2)) + (bbox.height / 4); });
    }
    this.highlightSkill = function(data, idx) {
      this.labels[0][idx].setAttribute("class", "active");
      //this.render();
    }
    this.unhighlightSkill = function(data, idx) {
      this.labels.attr('class', '');
      //this.render();
    }
    this.selectSkill = function(data, idx, what) {
      if (this.editing) {
        var skilldata = this.skills[idx];
        var skill = idx;
        this.editor.setData(skilldata);
      }
    }
    this.resize = function(ev) {
      this.svg.attr("width", window.innerWidth);
      this.svg.attr("height", window.innerHeight / 2);
      this.refresh();
    }
/*
    this.render = function() {
      this.refresh();
      //window.requestAnimationFrame(elation.bind(this, this.render))
    }
*/
  }, elation.ui.base);
  elation.component.add("resume.skills_editor", function() {
    this.init = function() {
      elation.html.addclass(this.container, 'skills_editor');
      this.canvas = elation.html.create({tag: "canvas", append: this.container});
      this.datasize = this.args.datasize || 50;

      this.values = [];
      for (var i = 0; i < this.datasize; i++) {
        this.values[i] = {x: i, y: 0};
      }
      /*
      this.createGraph();
      this.update();
      */
      elation.events.add(this.container, "mousedown", this);
    }
    this.createGraph = function() {
      this.canvas.width = this.container.offsetWidth;
      this.canvas.height = 200;
      this.ctx = this.canvas.getContext('2d');

      this.stack = d3.layout.stack().offset("zero");
      var width = this.container.offsetWidth;
      var height = 200;
      var x = d3.scale.linear().domain([0, this.datasize]).range([0, width]);
      var y = d3.scale.linear().domain([0, 100]).range([0, height]);

      this.layers = this.stack([this.values]);

      this.area = d3.svg.area()
          .x(function(d) { return x(d.x); })
          .y0(function(d) { return y(100); })
          .y1(function(d) { return y(100-d.y); });

      this.svg = d3.select(this.container).append("svg")
          .attr("width", width)
          .attr("height", height)

      this.svg.selectAll("path")
          .data(this.layers)
        .enter().append("g")
          .append("path")
            .attr("d", this.area)
            .style("fill", function(data, idx) { console.log(data[idx]); return "red"; })
    }
    this.setData = function(data) {
      this.values = data;
      this.datasize = data.length;
      elation.html.addclass(this.container, 'active');
      this.update();
    }
    this.update = function() {
      if (!this.ctx) this.createGraph();
      this.canvas.width = this.canvas.width; // clear canvas

      var splinedata = [];
      for (var i = 0; i < this.values.length; i++) {
        var d = this.values[i];
        if (d.y !== null) {
          splinedata.push((d.x / this.datasize) * this.canvas.width);
          splinedata.push((1 - (d.y / 100)) * this.canvas.height);
        }
      }

      elation.canvas.spline.drawSpline(this.ctx, splinedata, .5);

      this.layers = this.stack([this.values]);
      this.svg.selectAll("path")
          .data(this.layers)
          .attr("d", this.area)

      elation.events.fire({element: this, type: 'update'});
    }
    this.mousedown = function(ev) {
      this.dragging = true;
      //this.lastpos = false;
      elation.events.add(window, "mousemove,mouseup", this);
      ev.preventDefault();
    }
    this.mousemove = function(ev) {
      var cpos = elation.html.position(this.canvas);
      var relpos = [ev.pageX - cpos[0], ev.pageY - cpos[1]];

      var xpos = Math.min(Math.max(relpos[0], 0), this.canvas.width);
      var yval = Math.min(Math.max(relpos[1] / this.canvas.height, 0), 1);
      if (this.lastpos) {
        var xdiff = xpos - this.lastpos;
        var dir = Math.abs(xdiff) / xdiff;
        var startidx = Math.floor((xpos / this.canvas.width) * this.datasize);

  /*
        console.log('clear between', [xpos, this.lastpos]);
        for (var i = xpos; i <= xpos + xdiff; i += dir) {
          this.values[i] = null;
        }
        this.values[xpos] = yval * 100;
  */
        this.values[startidx].y = (1 - yval) * 100;
      }
      
      ev.preventDefault();
      this.lastpos = xpos;
      this.update();
    }
    this.mouseup = function(ev) {
      this.dragging = false;
      elation.events.remove(window, "mousemove,mouseup", this);
      ev.preventDefault();
    }
  }, elation.ui.base);
});
