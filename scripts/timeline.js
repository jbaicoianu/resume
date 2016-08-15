elation.requireCSS('resume.timeline');
elation.require(['ui.base'], function() {
  elation.component.add("resume.timeline", function() {
    this.defaultcontainer = {tag: 'div', classname: 'resume_timeline'};
    this.init = function() {
      var range = this.args.range || [0, 0];
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
        li.innerHTML = "<span>" + (startyear + i) + "</span>";
        li.style.width = (100 / duration) + '%';
        //li.style.paddingBottom = (window.innerHeight - parseInt(li.style.paddingTop)) + 'px';
console.log(window.innerHeight, li.offsetTop, li.offsetHeight);
      }
      var today = elation.html.create({tag: 'div', classname: 'timeline_today', append: this.container});
      today.innerHTML = new Date();
    }
  }, elation.ui.base);
});
