elation.requireCSS('resume.tasks');

elation.require(['utils.dust', 'utils.template'], function() {
  elation.template.add("resume.task", '<h3 class="task_label">{taskname|s}</h3><div class="task_description"><h4 class="task_role">{roles[0]}</h4><h4 class="task_duration">{start|printdate} - {end|printdate}</h4><div class="task_description_content">{description|s|linkurls}<ul>{#bulletpoints}<li>{.|s|linkurls}</li>{/bulletpoints}{?technologies}<li class="task_technologies">Technologies: {#technologies}<span>{.}</span> {/technologies}{/technologies}</ul></div></div>');

  dust.filters.printdate = function(value) {
    var names = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

    if (value == "ongoing" || value == "present") {
      return "present";
    } else {
      var d = (value instanceof Date ? value : new Date(value));

      return names[d.getMonth()] + ' ' + d.getFullYear();
    }
  }
  dust.filters.linkurls = function(value) {
    // TODO - yup, this is a horrible regex for doing this.  Feel free to ask me to explain why.
    var re = new RegExp(/(www\.[\w\.]+|[\w\.]+\.(:?com|net|org|io))\b/g);
    var matches = value.match(re);
    if (matches) {
      for (var i = 0; i < matches.length; i++) {
        value = value.replace(matches[i], '<a href="http://' + matches[i] + '" target=_blank>' + matches[i] + '</a>');
      }
    }
    return value;
  }
  elation.component.add("resume.tasks", function() {
    this.init = function() {
      this.data = this.args.data || false;
      this.createHTML();

      // Clicking anywhere outside of an active hotspot should close all active popups
      elation.events.add(window, 'click,touchend', elation.bind(this, this.hidePopups));

      if (this.data) {
        this.load(this.data);
      }
    }
    this.createHTML = function() {
      elation.html.addclass(this.container, 'resume_tasks');
      this.createTimescale(this.data.range);
      this.timeline = elation.resume.timeline({append: this.container, range: this.data.range});
    }
    this.load = function(data) {
      this.unload();

      this.data = data;
      var newtasks = data.tasks || false;
      var newrange = data.range || false;

      if (newtasks) {
        var range = (new Date(this.data.range[1]).getTime() - new Date(this.data.range[0]).getTime()) / 1000;
        var width = this.container.offsetWidth; // margin
        this.tasklists = {};

        var positions = {
          'employment': 'top',
          'education': 'bottom',
          'play': 'bottom'
        };

        for (var k in newtasks) {
          this.tasklists[k] = elation.html.create({tag: 'ul', classname: 'tasks ' + k, append: this.container});
          elation.html.addclass(this.tasklists[k], 'position_' + positions[k]);
          for (var i = 0; i < newtasks[k].length; i++) {
            var taskdata = newtasks[k][i];
            var li = elation.html.create({tag: 'li', id: taskdata.id, append: this.tasklists[k]});
            var task = elation.resume.task(null, li, taskdata);
            task.updateWidth(this.data.range);
            this.tasks.push(task);
          }
        }
      }
    }
    this.unload = function() {
      if (this.tasks && this.tasks.length > 0) {
        for (var i = 0; i < this.tasks.length; i++) {
          this.tasks[i].remove();
        }
      }
      this.tasks = [];
      if (this.tasklists) {
        this.tasklist.innerHTML = '';
      }
    }
    this.createTimescale = function(range) {
    }
    this.hidePopups = function() {
      var current = elation.find('.displaying', this.container);
      if (current && current.length > 0) {
        elation.html.removeclass(current, 'displaying');
      }
    }
    this.saveLocalCopy = function() {
    }
    this.click = function(ev) {
      // hide any active popups if a click wasn't handled by a task
      this.hidePopups();
    }
  }, elation.ui.base);
  elation.component.add("resume.task", function() {
    this.init = function() {
      // FIXME - this should be done with setProperties()
      if (this.args && Object.keys(this.args).length > 0) {
        for (var k in this.args) {
          this[k] = this.args[k];
        }
      }

      elation.html.addclass(this.container, "task " + this.type);
      if (this.level) {
        elation.html.addclass(this.container, 'level' + this.level);
      }
  /*
      var label = elation.html.create({tag: 'div', classname: 'task_label', append: this.container});
      label.innerHTML = '<h3>' + this.taskname + '</h3>';

      var description = elation.html.create({tag: 'textarea', classname: 'task_description', append: this.container});
      description.innerHTML = this.description || '';
  */
      this.container.innerHTML = elation.template.get("resume.task", this);

      this.starttime = new Date(this.start);
      this.endtime = false;
      if (this.end == 'ongoing' || this.end == 'present') {
        this.endtime = new Date();
        elation.html.addclass(this.container, 'ongoing');
      } else {
        this.endtime = new Date(this.end);
      }
      this.duration = (this.endtime.getTime() - this.starttime.getTime()) / 1000;
      delete this.args;

      elation.events.add(this.container, 'click,touchstart,touchmove,touchend', this);
    }
    this.updateWidth = function(range) {
      if (range) {
        this.range = range;
      } else {
        range = this.range;
      }
      var startoffset = (this.starttime.getTime() - new Date(range[0]).getTime()) / 1000;
      var rangeduration = (new Date(range[1]).getTime() - new Date(range[0]).getTime()) / 1000;
      
      if (false) {
        this.container.style.left = ((startoffset / rangeduration) * width) + 'px';
        this.container.style.width = ((this.duration / rangeduration) * width) + 'px';
      } else {
        this.container.style.left = ((startoffset / rangeduration) * 100) + '%';
        this.container.style.width = ((this.duration / rangeduration) * 100) + '%';
      }

      var desc = this.container.querySelector('.task_description');
      if (desc) {
        var width = desc.offsetWidth;
        var dim = desc.getBoundingClientRect();
        if (dim.left + width > window.innerWidth) {
          var margin = -(dim.width - this.container.offsetWidth);
          //desc.style.marginLeft = margin + 'px';
          elation.html.addclass(desc, 'task_description_offset');
/*
          desc.style.position = 'absolute';
          desc.style.right = 0;
*/

        }
      }
    }
    this.remove = function() {
      this.container.remove();
    }
    this.display = function() {
      if (!elation.html.hasclass(this.container, 'displaying')) {
        elation.resume.tasks(0).hidePopups();
        elation.html.addclass(this.container, 'displaying');
        this.updateWidth();
      }
    }
    this.click = function(ev) {
      this.display();
      ev.stopPropagation();
    }
    this.touchstart = function(ev) {
      this.touchmoved = false;
    }
    this.touchmove = function(ev) {
      this.touchmoved = true;
    }
    this.touchend = function(ev) {
      if (!this.touchmoved) {
        this.display();
        ev.stopPropagation();
      }
    }
    this.serialize = function() {
      var props = ['type', 'taskname', 'position', 'start', 'end', 'level', 'description'];
      var data = {};
      for (var i = 0; i < props.length; i++) {
        var p = props[i];
        var d = this[p];
        data[p] = (d instanceof Date ? d.getFullYear() + '-' + (d.getMonth() + 1) + '-' + d.getDate() : d);
      }
      return data;
    }
  }, elation.ui.base);
});
