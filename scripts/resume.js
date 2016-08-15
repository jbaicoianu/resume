elation.require(['resume.timeline', 'resume.tasks', 'resume.skills', 'resume.timemarker'], function() {
  elation.component.add("resume.interactive", function() {
    this.init = function() {
      this.data = this.args.data || {};
      this.range = this.data.range || [0, 0];

      elation.html.addclass(this.container, 'resume');

      this.skills = elation.resume.skills({append: this, skills: this.data.skills, range: this.range});
      this.tasks = elation.resume.tasks({append: this, data: this.data});
      this.currenttime = elation.resume.timemarker({append: document.body});

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
      console.log("\
                      This resume is open source, under the MIT License.\n\
             The source code is available at https://github.com/jbaicoianu/resume/ \
      ");
    }
    this.initVR = function() {
      elation.file.get('javascript', 'https://janusweb.metacade.com/janusweb.js', elation.bind(this, function() {
        this.skills.hide();
        this.tasks.hide();
        elation.janusweb.init();
      }));
    }
  });
});
