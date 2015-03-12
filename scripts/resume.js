elation.require(['resume.timeline', 'resume.tasks', 'resume.skills'], function() {
  elation.component.add("resume.interactive", function() {
    this.init = function() {
      this.data = this.args.data || {};
      this.range = this.data.range || [0, 0];

      elation.html.addclass(this.container, 'resume');

      this.skills = elation.resume.skills(null, elation.html.create({append: this.container}), {skills: this.data.skills, range: this.range});
      this.tasks = elation.resume.tasks(null, elation.html.create({append: this.container}), {data: this.data});

      this.showConsoleMessage();
    }
    this.showConsoleMessage = function() {
      console.log("\n\n\
                            ┏┓┏━┓┏┳┓┏━╸┏━┓   ┏┓ ┏━┓╻┏━╸┏━┓╻┏━┓┏┓╻╻ ╻\n\
                             ┃┣━┫┃┃┃┣╸ ┗━┓   ┣┻┓┣━┫┃┃  ┃ ┃┃┣━┫┃┗┫┃ ┃\n\
                           ┗━┛╹ ╹╹ ╹┗━╸┗━┛   ┗━┛╹ ╹╹┗━╸┗━┛╹╹ ╹╹ ╹┗━┛\n\
        \n\
        I put my name in console.log() so you could see I'm a real h4x0r.  Super l33t! \
      ");
    }
  });
});
