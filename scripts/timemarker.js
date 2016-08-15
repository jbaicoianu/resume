elation.requireCSS('resume.timemarker');
elation.require(['ui.base'], function() {
  elation.component.add('resume.timemarker', function() {
    this.init = function() {
      elation.resume.timeline.extendclass.init.call(this);

      this.addclass('resume_timemarker');  

      this.timelabel = elation.html.create({append: this, tag: 'span'});
      this.refresh();
      setInterval(this.refresh.bind(this), 1000);
    }
    this.render = function() {
      var d = new Date();
      this.timelabel.innerHTML = d;
    }
  }, elation.ui.base);
});
