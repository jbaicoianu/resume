{dependency name="utils.dust"}
{dependency name="utils.template"}
{dependency name="resume.ext.d3"}
{dependency name="resume"}

{set var="page.title"}James Baicoianu - Developer - Resume{/set}

<section class="header">
  <h1>James Baicoianu</h1>

  <address>
    <a href="mailto:james@baicoianu.com">james@baicoianu.com</a>
    <a href="tel:1-408-472-4812">+1-408-472-4812</a>
    <a href="http://github.com/jbaicoianu/">GitHub</a>
  </address>
</section>
<div data-elation-component="resume.interactive">
 <data class="elation-args" name="data">
  {
    "range": ["1995-01-02", "2015-01-01"],
    "tasks": [
      { "id": "task_education_valencia1", "taskname": "VHS", "roles": ["Student"], "start": "1995-08-01", "end": "1996-06-30", "type": "education", "level": 1 },
      { "id": "task_education_iskl", "taskname": "ISKL", "roles": ["Student"], "start": "1996-08-01", "end": "1998-06-30", "type": "education", "level": 1 },
      { "id": "task_education_valencia2", "taskname": "VHS", "roles": ["Student"], "start": "1998-08-01", "end": "1999-06-30", "type": "education", "level": 1 },
      { "id": "task_education_ucr", "taskname": "UC Riverside", "roles": ["Student"], "start": "1999-09-01", "end": "2001-01-01", "type": "education", "level": 1 },

      { "id": "task_employment_ucr", "taskname": "UCR Housing", "roles": ["Residential Computing Consultant"], "start": "2000-09-01", "end": "2001-01-01", "type": "employment", "level": 1 },
      { "id": "task_employment_mccormick", "taskname": "McCormick", "roles": ["Computer Programmer / Systems Administrator"], "start": "2000-05-01", "end": "2003-10-31", "type": "employment", "level": 2, "description": "While at McCormick, I developed a CRM which was used to manage customer service, direct marketing, and B2B order fulfillment for several subsidiaries.  I designed, implemented, and administrated a scalable multi-tier web cluster, and built the project significantly under expected budget.  This job was my first real education in enterprise services and software development, and I learned a huge amount about Linux, PHP, SQL, networking, " },
      { "id": "task_employment_asl", "taskname": "Air Synergy Labs, Inc", "roles": ["Lead Developer / Systems Administration"], "start": "2002-01-31", "end": "2006-02-27", "type": "employment", "level": 1 },
      { "id": "task_employment_affini", "taskname": "Affini", "roles": ["Senior Software Engineer"], "start": "2004-08-01", "end": "2006-12-31", "type": "employment", "level": 2 },
      { "id": "task_employment_thefind", "taskname": "TheFind", "roles": ["Frontend Architect/Lead"], "start": "2006-08-14", "end": "ongoing", "type": "employment", "level": 1 },

      { "id": "task_play_j3dgp", "taskname": "James' 3D Gaming Page", "roles": ["Webmaster"], "start": "1996-12-01", "end": "1999-01-01", "type": "play", "level": 2, "description": "This was my first website, hosted on Geocities.  I used this site to write about video games, mods, user-generated content, and the various 3d tools used to create them.  Nowadays, some might call it a blog.  Not much still exists of James' 3D Gaming Page - it was created in simpler times when people didn't consider things like crawlers and SEO, and used harmful HTML features like frames, java applets, and blink tags.  It was also where I learned Javascript, which is still one of my primary languages almost 20 years later."},
      { "id": "task_play_hardwire", "taskname": "HardWire.net", "roles": ["Webmaster"], "start": "1998-10-15", "end": "2000-05-01", "type": "play", "level": 3, "description": "Hardwire.net was a collaborative effort with several friends to run a hardware review and news aggregation site.  This site was a playground for trying out new technologies, and I learned a lot about SQL, CSS, Perl, and PHP while evolving this product." },
      { "id": "task_play_perilith", "taskname": "Perilith", "roles": ["Volunteer Systems Administrator"], "start": "1999-05-01", "end": "2004-09-01", "type": "play", "level": 2, "description": "Perilith was a shared hosting server administrated by a group of volunteers.  We provided services for several gaming community sites and a number of personal sites.  I learned a lot about Linux, Apache, Postfix, virtual hosting, Perl, and general networking from my time spent assisting here." },
      { "id": "task_play_mediabox", "taskname": "Multimedia Set-top Box", "roles": ["Creator"], "start": "2001-01-15", "end": "ongoing", "type": "play", "level": 4, "description": "My quest for the perfect multimedia set-top box began over a decade ago, and I'm still not happy with the state of this particular world.  This industry tends to go in cycles - every few years a promising new software, hardware, or content distribution option will come along, and then after a few months it's either been ruined by companies bowing to demands/legal pressure from content providers to neuter or delay the product (CableCARD), content providers pulling content (Netflix) or blocking devices (Hulu), and ever-present DRM woes.  Nevertheless, I'm still trying to come up with the perfect interface which ties together movie/tv streaming, video gaming, home automation, and casual web browsing into a unified set-top interface." },
      { "id": "task_play_carpc", "taskname": "CarPC", "roles": ["Creator"], "start": "2005-05-15", "end": "2009-04-01", "type": "play", "level": 2, "description": "For this project, I embedded a touchscreen LCD in the dash of my car and ran cables to an internet-connected mini-itx system in my trunk.  On top of this hardware platform I built a custom interface which combined Google Maps, realtime directions with text-to-speech, live traffic updates, audio streaming and playlist management.  I learned a good amount about embedded systems and electronics, and working with a constricted resolution on a touchscreen device gave me some insight into how to make websites which would work across all devices, rather than building separate websites for desktop users and mobile users, which is sadly still common practice today." },
      { "id": "task_play_elation", "taskname": "Elation Web Framework", "roles": ["Creator"], "start": "2003-05-01", "end": "ongoing", "type": "play", "level": 3, "description": "Elation is the culmination of all of my experience developing interactive websites over the past couple decades, captured in a collection of libraries.   Elation contains several different components which can be used separately or in conjunction with each other - a PHP server-side framework, a Javascript MVC library which works in the browser and Node.js, a UI toolkit inspired by a number of desktop toolkits (Gtk/wxWindows/Delphi/Cocoa/etc), and a collection of utilities and components for dealing with HTML, images, input handling, form generation, etc." },
      { "id": "task_play_crystalspace", "taskname": "Crystal Space", "roles": ["Contributor"], "start": "2001-05-01", "end": "2005-12-01", "type": "play", "level": 1, "description": "The Crystal Space 3D SDK was the first open source project I really contributed to.  I used Crystal Space to develop my first attempt at a game, called Open Space - a first-person space simulator which supported newtonian and relativistic physics with time dilation, and used physically-simulated orbits and gravitic forces to provide an always-changing universe.  As it turns out, a 3d space MMOFPSRTSRPG was a bit too amitious for our amateur two-person team, but I still learned a great deal from the experience.  In addition to the code I contributed to Crystal Space, I also provided support to other developers and contributed to documentation.  I learned a huge amount about 3D programming and C++ from this experience, and working with the team taught me a lot about how to architect and manage large projects with multiple contributors." },
      { "id": "task_play_arduino", "taskname": "Arduino", "roles": ["Tinkerer"], "start": "2010-03-14", "end": "ongoing", "type": "play", "level": 2, "description": "I love Arduinos, they're like Lego for adults - that is, if adults ever really stop playing with Lego.  I use my Arduinos for monitoring various things around the house, and interfacing with my existing home automation system.  Working with Arduino has given me a chance to work with al the electronics gadgetry I missed out on by picking the software career path over the hardware one.  I especially enjoy teaching others, especially non-programmers, how to work with Arduinos and make them do whatever they imagine." },
      { "id": "task_play_elationengine", "taskname": "Elation Engine", "roles": ["Creator"], "start": "2011-02-01", "end": "ongoing", "type": "play", "level": 1, "description": "Elation Engine is my attempt to build a fully-featured 3d engine in Javascript.  Inspired mostly by my experience modding for the Quake, Source, and Unreal engines over the years, I've tried hard to combine a simple and clear API with interesting and useful tools for managing scene content, while trying to consider both the serious developer and the non-coding end user who might still want to be able to create worlds using drag-and-drop.  "}
    ]
 }
  </script>
</div>

{*
<ul class="tasks">
  <li id="task_play_elationengine" data-elation-component="resume.task" data-elation-args.type="play">
    <h3 data-property="taskname">Elation Engine</h3>
    <h4><span data-property="start">2011-02-01</span> <span data-property="end">present</span></h4>
    <ul data-property="roles">
      <li>Creator</li>
      <li>Founder</li>
    </ul>
    <div data-property="description">
      Elation Engine is my attempt to build a fully-featured 3d engine in Javascript.  Inspired mostly by my experience modding for the Quake, Source, and Unreal engines over the years, I've tried hard to combine a simple and clear API with interesting and useful tools for managing scene content, while trying to consider both the serious developer and the non-coding end user who might still want to be able to create worlds using drag-and-drop.  
    </div>
  </li>
</ul>
*}
