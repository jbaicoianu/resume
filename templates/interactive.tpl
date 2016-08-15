{component name="resume.janusvr"}

<!--
               ┏┓┏━┓┏┳┓┏━╸┏━┓   ┏┓ ┏━┓╻┏━╸┏━┓╻┏━┓┏┓╻╻ ╻
                ┃┣━┫┃┃┃┣╸ ┗━┓   ┣┻┓┣━┫┃┃  ┃ ┃┃┣━┫┃┗┫┃ ┃
              ┗━┛╹ ╹╹ ╹┗━╸┗━┛   ┗━┛╹ ╹╹┗━╸┗━┛╹╹ ╹╹ ╹┗━┛

Hello, and welcome to my resume!  If you're reading this, you've probably been 
given a link to my resume and want to see if the code was any good.

The code for this resume is open source under the MIT license, and can be found 
at https://github.com/jbaicoianu/resume/.  I hope you find it to your liking.
-->

<section class="header">
  <div class="header_left">
    <img class="resume_profile_image" src="https://avatars0.githubusercontent.com/u/251610?v=3&s=460" />
    <h1>James Baicoianu</h1>
    <h2></h2>
  </div>

  <address>
    <a href="mailto:james_resume2016@baicoianu.com">james@baicoianu.com</a>
    <a href="tel:1-408-472-4812">+1-408-472-4812</a>
    <a href="https://github.com/jbaicoianu/">github.com/jbaicoianu</a>
    <a href="https://twitter.com/bai0/">twitter.com/bai0</a>
  </address>

  <div class="header_crosspromo">
    <div class="crosspromo_print"><img src="/images/resume/desktopmobileicon.png"> This is the printed version of this resume<br>Interactive version available online at <a href="http://baicoianu.com/resume/">baicoianu.com/resume/</a></div>
    
    <div class="crosspromo_screen"><a href="javascript:print()"><img src="/images/resume/printericon.png"></a> This is the interactive version of this resume.<br>Also available in a <a href="javascript:print()">printed version</a></div>

    <div class="crosspromo_vr"><a href="javascript:elation.resume.interactive.obj[0].initVR()"><img src="/images/resume/vricon.png"></a> This resume is also a portal to the Metaverse.<br><a href="javascript:elation.resume.interactive.obj[0].initVR()">Activate VR mode</a> to experience it</div>
  </div>

</section>

<div data-elation-component="resume.interactive">
 <data class="elation-args" name="data">
  {
    "range": ["1995-01-02", "2016-12-31"],
    "tasks": {
      "employment": [
        { 
          "id": "task_employment_supercritical", 
          "taskname": "Supercritical Industries, LLC", 
          "roles": ["Founder"], 
          "start": "2008-09-02",
          "end": "ongoing", 
          "type": "employment", 
          "level": 2,
          "bulletpoints": [
            "Creators of the Elation Engine open source VR platform",
            "www.Metacade.com - online VR arcade which lets users play arcade, DOS, Windows, Amiga, and other classic games in the browser.",
            "www.AugmentedPerception.com - Metaverse search engine",
            "JanusWeb.Metacade.com - web-based client for JanusVR worlds"
          ],
          "technologies": [
            "Three.js", "WebGL", "WebVR", "Emscripten", "Blender", "JavaScript", "HTML5", "AWS", "Oculus Rift", "HTC Vive", "GearVR", "Google Cardboard"
          ]
        }, { 
          "id": "task_employment_thefind", 
          "taskname": "TheFind, Inc.", 
          "roles": ["Platform Architect"], 
          "start": "2006-08-14",
          "end": "2015-03-31", 
          "type": "employment", 
          "level": 1,
          "bulletpoints": [
            "Shopping search engine which indexed 500M products from 500K online merchants",
            "Lead frontend and platform development from product launch in 2006 to acquisition by Facebook in 2015",
            "Built search platform, defined APIs, and established formal development and release processes"
          ],
          "technologies": [
            "Apache", "PHP", "JavaScript", "HTML5", "Memcache", "MySQL", "Cassandra", "C++", "Python", "Shell", "Android", "LVS", "SVN", "Git", "AWS"
          ]
        }, { 
          "id": "task_employment_affini",
          "taskname": "Affini, Inc.",
          "roles": ["Senior Software Engineer"],
          "start": "2004-08-01",
          "end": "2006-12-31",
          "type": "employment",
          "level": 2,
          "bulletpoints": [
            "Lead development of search-based ad platform which matched users with ads based on social media profiles",
            "Presented product on stage at DEMO.com conference"
          ],
          "technologies": [
            "Linux", "Networking", "Apache", "Python", "PHP", "PostgreSQL", "Jabber", "XHTML", "CSS", "JavaScript"
          ]
        }, {
          "id": "task_employment_asl",
          "taskname": "Air Synergy Labs, Inc",
          "roles": ["Lead Developer/Systems Administration"],
          "start": "2002-01-31",
          "end": "2006-02-27",
          "type": "employment",
          "level": 1,
          "bulletpoints": [
            "Developed e-commerce backend and CRM system for managing multiple storefronts",
            "Designed, built, and maintained Linux clusters and network"
          ],
          "technologies": [
            "Linux", "Networking", "Apache", "Perl", "PHP", "DHTML", "CSS", "JavaScript", "LVS"
          ]
        }, {
          "id": "task_employment_mccormick",
          "taskname": "McCormick & Co.",
          "roles": ["Programmer/Systems Administrator"],
          "start": "2000-05-01",
          "end": "2003-10-31",
          "type": "employment",
          "level": 2,
          "bulletpoints": [
            "Developed CRM software to handle product inquiries, B2B fulfillment, customer support, and direct marketing",
            "Designed, built, and maintained scalable Linux webhosting cluster"
          ],
          "technologies": [
            "Linux", "Networking", "Apache", "Perl", "PHP", "DHTML", "CSS", "JavaScript", "LVS"
          ]
        }, {
          "id": "task_employment_ucr",
          "taskname": "UCR Housing",
          "roles": ["Residential Computing Consultant"],
          "start": "2000-08-01",
          "end": "2001-02-01",
          "type": "employment",
          "level": 1,
          "bulletpoints": [
            "Provided technical assistance to residence hall students and staff",
            "Developed thin client and server-side applications for use in residence hall computer labs", 
            "Dealt with a variety of network related problems on the campus network"
          ],
          "technologies": [
            "Linux", "Networking", "Perl"
          ]
        }
      ],
      "education": [
        {
          "id": "task_education_ucr",
          "taskname": "UCR",
          "roles": ["Student"],
          "start": "1999-09-01",
          "end": "2001-02-01",
          "type": "education",
          "level": 1,
          "bulletpoints": [
            "University of California, Riverside"
          ]
        }, {
          "id": "task_education_valencia2",
          "taskname": "VHS",
          "roles": ["Student"],
          "start": "1998-08-01",
          "end": "1999-06-30",
          "type": "education",
          "level": 1,
          "bulletpoints": [
            "Valencia High School, Valencia, CA"
          ]
        }, {
          "id": "task_education_iskl",
          "taskname": "ISKL",
          "roles": ["Student"],
          "start": "1996-08-01",
          "end": "1998-06-30",
          "type": "education",
          "level": 1,
          "bulletpoints": [
            "International School of Kuala Lumpur, Malaysia"
          ]
        }, {
          "id": "task_education_valencia1",
          "taskname": "VHS",
          "roles": ["Student"],
          "start": "1995-08-01",
          "end": "1996-06-30",
          "type": "education",
          "level": 1, 
          "bulletpoints": [
            "Valencia High School, Valencia, CA"
          ]
        }
       ],
      "play": [
        { "id": "task_play_archive",
          "taskname": "Archive.org",
          "roles": ["Volunteer, Emularity Project"],
          "start": "2014-09-01",
          "end": "ongoing",
          "type": "play",
          "level": 5,
          "description": "<ul><li>Worked with a team of volunteers dedicated to bringing emulation of old computing platforms and software to the web (Amiga, AppleII, MS-DOS, Win3.1, and hundreds of arcade games)</li><li>Organized and operated booths for VR demos during DecentralizedWeb.net and other Archive.org events</li></ul>"
        }, {
          "id": "task_play_elationengine",
          "taskname": "Elation Engine",
          "roles": ["Creator"],
          "start": "2011-02-01",
          "end": "ongoing",
          "type": "play",
          "level": 1,
          "description": "Elation Engine is my attempt to build a fully-featured 3d engine in Javascript.  Inspired mostly by my experience modding for the Quake, Source, and Unreal engines over the years, I've tried hard to combine a simple and clear API with interesting and useful tools for managing scene content, while trying to consider both the serious developer and the non-coding end user who might still want to be able to create worlds using drag-and-drop.  "
        }, {
          "id": "task_play_elation",
          "taskname": "Elation Web Framework",
          "roles": ["Creator"],
          "start": "2003-05-01",
          "end": "ongoing",
          "type": "play",
          "level": 4,
          "description": "Elation is the culmination of all of my experience developing interactive websites over the past couple decades, captured in a collection of libraries.   Elation contains several different components which can be used separately or in conjunction with each other - a PHP server-side framework, a Javascript MVC library which works in the browser and Node.js, a UI toolkit inspired by a number of desktop toolkits (Gtk/wxWindows/Delphi/Cocoa/etc), and a collection of utilities and components for dealing with HTML, images, input handling, form generation, etc." 
        }, {
          "id": "task_play_arduino",
          "taskname": "Arduino",
          "roles": ["Tinkerer"],
          "start": "2010-03-14",
          "end": "ongoing",
          "type": "play",
          "level": 2,
          "description": "I love Arduinos, they're like Lego for adults - that is, if adults ever really stop playing with Lego.  I use my Arduinos for monitoring various things around the house, and interfacing with my existing home automation system.  Working with Arduino has given me a chance to work with al the electronics gadgetry I missed out on by picking the software career path over the hardware one.  I especially enjoy teaching others, especially non-programmers, how to work with Arduinos and make them do whatever they imagine." 
        }, {
          "id": "task_play_mediabox",
          "taskname": "Multimedia Set-top Box",
          "roles": ["Creator"],
          "start": "2001-01-15",
          "end": "2012-03-01",
          "type": "play",
          "level": 3,
          "description": "My quest for the perfect multimedia set-top box began over a decade ago, and I'm still not happy with the state of this particular world.  This industry tends to go in cycles - every few years a promising new software, hardware, or content distribution option will come along, and then after a few months it's either been ruined by companies bowing to demands/legal pressure from content providers to neuter or delay the product (CableCARD), content providers pulling content (Netflix) or blocking devices (Hulu), and ever-present DRM woes.  Nevertheless, I'm still trying to come up with the perfect interface which ties together movie/tv streaming, video gaming, home automation, and casual web browsing into a unified set-top interface." 
        }, {
          "id": "task_play_carpc",
          "taskname": "CarPC",
          "roles": ["Creator"],
          "start": "2005-05-15",
          "end": "2009-04-01",
          "type": "play",
          "level": 2,
          "description": "For this project, I embedded a touchscreen LCD in the dash of my car and ran cables to an internet-connected mini-itx system in my trunk.  On top of this hardware platform I built a custom interface which combined Google Maps, realtime directions with text-to-speech, live traffic updates, audio streaming and playlist management.  I learned a good amount about embedded systems and electronics, and working with a constricted resolution on a touchscreen device gave me some insight into how to make websites which would work across all devices, rather than building separate websites for desktop users and mobile users, which is sadly still common practice today." 
        }, {
          "id": "task_play_crystalspace",
          "taskname": "Crystal Space",
          "roles": ["Contributor"],
          "start": "2001-05-01",
          "end": "2005-12-01",
          "type": "play",
          "level": 1,
          "description": "The Crystal Space 3D SDK was the first open source project I really contributed to.  I used Crystal Space to develop my first attempt at a game, called Open Space - a first-person space simulator which supported newtonian and relativistic physics with time dilation, and used physically-simulated orbits and gravitic forces to provide an always-changing universe.  As it turns out, a 3d space MMOFPSRTSRPG was a bit too amitious for our amateur two-person team, but I still learned a great deal from the experience.  In addition to the code I contributed to Crystal Space, I also provided support to other developers and contributed to documentation.  I learned a huge amount about 3D programming and C++ from this experience, and working with the team taught me a lot about how to architect and manage large projects with multiple contributors." 
        }, {
          "id": "task_play_perilith",
          "taskname": "Perilith",
          "roles": ["Volunteer Systems Administrator"],
          "start": "1999-05-01",
          "end": "2004-09-01",
          "type": "play",
          "level": 2,
          "description": "Perilith was a shared hosting server administrated by a group of volunteers.  We provided services for several gaming community sites and a number of personal sites.  I learned a lot about Linux, Apache, Postfix, virtual hosting, Perl, and general networking from my time spent assisting here." 
        }, {
          "id": "task_play_hardwire",
          "taskname": "HardWire",
          "roles": ["Webmaster"],
          "start": "1998-10-15",
          "end": "2000-05-01",
          "type": "play",
          "level": 3,
          "description": "Hardwire.net was a collaborative effort with several friends to run a hardware review and news aggregation site.  This site was a playground for trying out new technologies, and I learned a lot about SQL, CSS, Perl, and PHP while evolving this product." 
        }, {
          "id": "task_play_j3dgp",
          "taskname": "James' 3D Gaming",
          "roles": ["Webmaster"],
          "start": "1996-12-01",
          "end": "1999-01-01",
          "type": "play",
          "level": 2,
          "description": "This was my first website, hosted on Geocities.  I used this site to write about video games, mods, user-generated content, and the various 3d tools used to create them.  Nowadays, some might call it a blog.  Not much still exists of James' 3D Gaming Page - it was created in simpler times when people didn't consider things like crawlers and SEO, and used harmful HTML features like frames, java applets, and blink tags.  It was also where I learned Javascript, which is still one of my primary languages almost 20 years later."
        }
      ]
    },
    "skills": {
      "Programming":{
        "HTML/CSS":[0,0,0,0,0,1,12.5,15,17,16,16,17,19,18.5,18,35,36.5,38,39,40,42.50000000000001,43.99999999999999,45.49999999999999,48,49.5,51.5,60,64.5,67,68.5,70.5,72,78.5,83.5,91.5,95,96.5,100,100,100,100,100,100,100,100,100,100,100,100,100],
        "JavaScript":[0,0,0,0,0,1,12.5,15,17,16,16,17,19,18.5,18,35,36.5,38,39,40,42.50000000000001,43.99999999999999,45.49999999999999,48,49.5,51.5,60,64.5,67,68.5,70.5,72,78.5,83.5,91.5,95,96.5,100,100,100,100,100,100,100,100,100,100,100,100,100],
        "PHP":[0,0,0,0,0,0,0,0,0,0,0,0,4.5,11.5,14.5,14,14,16,28.5,34.5,41,46,51.5,55,56,57,57,58.5,65,69,73,72.5,83,88,87.5,90.5,97.5,100,100,100,100,100,100,100,100,100,100,100,100,100],
        "C/C++/C#/Obj-C":[0,0,0,0,0,0,0,5.5,9.5,10,12.5,12.5,12,23,24,21,24.5,45.5,49.5,52.5,50.5,49,48.5,49,50.5,53.5,54.5,52,47,41,39,37,37.5,44.5,48.5,52,53.5,53.5,56,63,69,73,73.5,76,78,79.5,81,81,80.5,79.5],
        "Perl":[0,0,0,0,0,0,0,0,0,0,3,9,13,14.5,30.5,31.5,33,33.5,36.5,22.5,17,13,12.5,10,8.5,7,6.5,7,7,7,4.5,1.5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        "Python":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7.9999999999999964,11.5,13.5,14.500000000000002,18.000000000000004,18.999999999999993,19.999999999999996,21.499999999999996,22.499999999999996,26.5,29.000000000000004,43.00000000000001,43.00000000000001,43.99999999999999,46.5,53,64,65.5,67,68.5,68.5,67,67,65.99999999999999,66.5,65.99999999999999,65.99999999999999,64.5],
        "Shell":[0,0,0,0,0,0,0,0,0,0,0,0,11,12,12,14.5,18.5,22,23.5,23,19,17,18,19,19.5,20,26.5,28,27.5,27.5,27,26.5,26.5,28,29.5,30,30,30,30.5,31.5,31,31.5,32,31.5,31,31.5,31.5,32.5,33.5,35],
        "OpenGL":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14.5,19,19,20.5,21.5,23,24.5,27.5],
        "Java":[0,0,0,0,0,0,3.5,10,17,14,13,11.5,8.5,3.5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,5,7,9.5,10.5,10.5,11.5,14.5,17,18,18.5,18,20,20,19.5],
        "BASIC":[9,9.5,9.5,9.5,10.5,20,25.5,28.5,31.5,30,20,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      },
      "Systems":{
        "DOS":[25.5,21,20.5,19.5,16,10.5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        "Windows":[4,28,42.5,46.5,49.5,60.5,60.5,63,66.5,69,73.5,76.5,78,80.5,81.5,77,66.5,62,56.5,49,44,38,35,34,29,27,25,24.5,24.5,24.5,24.5,25,25.5,25.5,26,26.5,27,27,26.5,26.5,26.5,26.5,26.5,26,26,27,27.5,28.5,29.5,29.5],
        "Linux":[0,0,0,0,0,0,0,0,0,0,0,14,16.5,22,31,30,29,30,32.5,35.5,38,38,39.5,40.5,45,48.5,50.5,52,54.5,55.5,59.5,63,68,71,77,82.5,86,90,93.5,95.5,98,99.5,100,100,100,100,100,100,100,100],
        "OSX":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,6.5,7.5,8,8.5,8.5,6.5,6,6,7,7,12,14,14,13,12,12,12,12,10.5,9.5,9,9,10,11.5,13,14,14,16,21,22],
        "iOS":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,9,10.5,10.5,12,12.5,13,13,12.5,12.5,13.5,12.5,13,13.5,13.5,13.5,13.5,15.5,21.5,25],
        "Android":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.5,8.5,22,27.5,30.5,32.5,33,35,37,45,50,51.5,52.5,52],
        "Networking":[4.5,7.5,8,5.5,4,4.5,8,7.5,6.5,7.5,9.5,9.5,15.5,23,25,49.5,45.5,48,48.5,50.5,51.5,51.5,50,49.5,49.5,52,60,64.5,62.5,62,63,65,65.5,65,64.5,65.5,69,72,74.5,75,75,76,77.5,79.5,81,82,83.5,86,87.5,87]
      },
      "Databases":{
        "MySQL":[0,0,0,0,0,0,0,0,0,0,0,0,3.5,11,14,16.5,18.5,19,19,18,22,28,27.5,27,26.5,27,27.5,28,28,29,41,45.5,52.5,57.5,60.5,59,58.5,64,71,73.5,73.5,73.5,74,72,75,80.5,82,85,89,88],
        "PostgreSQL":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,21.5,24,24,25.5,23.5,19,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        "Memcache":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2.5,6,12,13.5,16,17.5,19,22.5,26,31,37,48,54,58.5,60.5,63.5,65.5,68,69.5,71,71,71,71.5,71.5,71.5],
        "NoSQL":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7.5,21.5,25,34.5,33.5,33.5,34,34.5,35,35,35.5]
      },
      "Skills":{
        "math":[19,21.5,24.5,29,32,37.5,42.5,46,49,53.5,59,63,69.5,74.5,48.5,36,32,26,26,27,39.5,42,39.5,38,35.5,34,28.5,23.5,22,21,21,21.5,22,21,19.5,17.5,16.5,16.5,19,25.5,34.5,41.5,49,55.5,60.5,63.5,65.5,67,69,70.5],
        "physics":[0,0,0,0,0,0,9.5,18.5,21.5,20,26.5,29.5,30.5,33.5,37,33,30,33,42.5,42.5,31.5,24,21,20,20,19,16.5,11.5,12,11.5,11.5,13,14,14.5,14,12,11.5,12,13,14.5,14.5,17,21,35.5,42,49,50,48.5,51,52],
        "management":[0,0,0,0,0,0,0,0,0,0,0,9.5,9.5,6.5,5,0,0,0,0,0,4.5,4.5,4.5,4,2.5,7.5,8,9.5,10,11,12,12,21,20,19,20.5,22,24,26,27.5,28.5,30.5,32.5,39,48.5,51.5,56.5,69.5,62,65],
        "design":[0,0,0,0,0,0,0,0,0,0,0,0,11.5,12,2.5,0,0,4,10.5,11.5,12,12.5,11,10,11,11.5,11.5,11.5,15,17,18.5,18.5,16.5,13.5,12,12.5,13.5,16,18,19.5,20.5,22.5,24.5,27.5,30,39.5,45,49,52.5,57],
        "electronics":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0.5,4,3.5,3.5,3,4,5,6,6,6.5,11,15,13.5,14,14.5,14.5,14.5,15.5,14.5,8.5,7,7,14.5,21,25,28.5,30.5,32.5,36,35.5,35.5,35.5,35]
      }
    }
  }
 </data>
</div>

{dependency name="resume"}
{dependency name="resume.ext.colorbrewer"}

{set var="page.title"}James Baicoianu - Developer - Resume{/set}
{set var="page.meta.description"}Online interactive resume for James Baicoianu, Developer{/set}
{set var="page.meta.keywords"}James Baicoianu, interactive resume, responsive design, infographics{/set}

