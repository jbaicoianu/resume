elation.template.add("resume.task", '<h3 class="task_label">{taskname}</h3><h4>{start|printdate} - {end|printdate}</h4><div class="task_description">{description}</div>');
dust.filters.printdate = function(value) {
  var names = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

  if (value == "ongoing" || value == "present") {
    return "present";
  } else {
    var d = (value instanceof Date ? value : new Date(value));

    return names[d.getMonth()] + ' ' + d.getFullYear();
  }
}

elation.component.add("resume.interactive", function() {
  this.init = function() {
    this.data = this.args.data || false;
    this.createHTML();

    // Clicking anywhere outside of an active hotspot should close all active popups
    elation.events.add(window, 'click', this);

    if (this.data) {
      this.load(this.data);
    }
  }
  this.createHTML = function() {
    this.createTimescale(this.data.range);
    this.tasklist = elation.html.create({tag: 'ul', classname: 'tasks', append: this.container});
  }
  this.load = function(data) {
    this.unload();

    this.data = data;
    var newtasks = data.tasks || false;
    var newrange = data.range || false;

    if (newtasks) {
      var range = (new Date(this.data.range[1]).getTime() - new Date(this.data.range[0]).getTime()) / 1000;
      var width = this.container.offsetWidth; // margin
      for (var i = 0; i < newtasks.length; i++) {
        var li = elation.html.create({tag: 'li', id: newtasks[i].id, append: this.tasklist});
        var task = elation.resume.task(null, li, newtasks[i]);
        task.updateWidth(this.data.range);
        this.tasks.push(task);
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
    this.tasklist.innerHTML = '';
  }
  this.createTimescale = function(range) {
    var start = new Date(range[0]), 
        end = new Date(range[1]);

    //var years = duration / (60 * 60 * 24 * 365.25);
    var startyear = start.getFullYear();
    var endyear = end.getFullYear();
    var duration = endyear - startyear + 1;
  
    var ul = elation.html.create({tag: 'ul', classname: 'timeline', append: this.container});
    var width = this.container.offsetWidth;
    for (var i = 0; i < duration; i++) {
      var li = elation.html.create({tag: 'li', classname: 'year', append: ul});
      li.innerHTML = startyear + i;
      li.style.width = (100 / duration) + '%';
    }
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
});
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

    elation.events.add(this.container, 'click', this);
  }
  this.updateWidth = function(range) {
    var startoffset = (this.starttime.getTime() - new Date(range[0]).getTime()) / 1000;
    var rangeduration = (new Date(range[1]).getTime() - new Date(range[0]).getTime()) / 1000;
    
    if (false) {
      this.container.style.left = ((startoffset / rangeduration) * width) + 'px';
      this.container.style.width = ((this.duration / rangeduration) * width) + 'px';
    } else {
      this.container.style.left = ((startoffset / rangeduration) * 100) + '%';
      this.container.style.width = ((this.duration / rangeduration) * 100) + '%';
    }
  }
  this.remove = function() {
    this.container.remove();
  }
  this.click = function(ev) {
    if (!elation.html.hasclass(this.container, 'displaying')) {
      elation.resume.interactive(0).hidePopups();
      elation.html.addclass(this.container, 'displaying');
    }
    ev.stopPropagation();
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
});
