angular.module('CoderFactory')

.service('CoursesService', function() {
  var courses = this;

  courses.allCourses = [{
    title           : 'Web Design',
    info            : "Get creative with web design. Learn how to make beautiful websites. This short course form gives you a fast paced but enjoyable taste of web design. You'll learn the words the kids are using like UX, UI, Development. Anyone can do it!",
    level           : 'Beginner',
    type            : 'workshop',
    location        : ['Melbourne', 'Brisbane', 'Sydney'],
    nextClass       : {
                        'Melbourne': '17 - 18th Feb (Weekend)',
                        'Brisbane' : '19 - 20 Mar (Weekend)',
                        'Sydney'   : '15 - 16 Apr (Weekend)'
                      },
    followingClass  : {
                        'Melbourne': '28 - 29th Feb (Weekend)',
                        'Brisbane' : '22 - 23 Mar (Weekend)',
                        'Sydney'   : '21 - 22 Apr (Weekend)'
                      },
    tags   : ['how to code'],
    skills : [{
      name : 'Visual Design',
      img  : 'icon-brush'
    }, {
      name : 'Design Fundamentals',
      img  : 'icon-type'
    }, {
      name : 'User Experience',
      img  : 'icon-flow-chart'
    }, {
      name : 'Front End Design',
      img  : 'icon-artboard'
    }, {
      name : 'Animation',
      img  : 'icon-transform'
    }]
  },
  {
    title           : 'Learn to Code',
    info            : "Get creative with web design. Learn how to make beautiful websites.",
    level           : 'Beginner',
    type            : 'workshop',
    location        : ['Melbourne', 'Brisbane', 'Sydney', 'Adelaide', 'Perth'],
    nextClass      : '17 - 18th Feb (Weekend)',
    followingClass : '29 - 30th Feb (Weekend)',
    tags   : ['how to code'],
    skills : [{
      name : 'Front End Dev',
      img  : 'icon-html-code'
    }, {
      name : 'Backend Dev',
      img  : 'icon-console'
    }, {
      name : 'Lean Dev',
      img  : 'icon-lean'
    }]
  }, {
    title           : 'Wordpress',
    info            : "Build your own Wordpress site for fun or profit.",
    level           : 'Beginner',
    type            : 'workshop',
    location        : ['Sydney'],
    nextClass      : '17 - 18th Feb (Weekend)',
    followingClass : '29 - 30th Feb (Weekend)',
    tags   : ['how to code'],
    skills : [{
      name : 'CMS',
      img  : 'icon-cms'
    }, {
      name : 'Front End Dev',
      img  : 'icon-html-code'
    }, {
      name : 'Backend Dev',
      img  : 'icon-console'
    }]
  }, {
    title           : 'Learn To Code For Highschoolers',
    info            : "Learn To Code For Highschoolers",
    level           : 'Beginner',
    type            : 'workshop',
    location        : ['Melbourne', 'Brisbane', 'Sydney'],
    nextClass      : '17 - 18th Feb (Weekend)',
    followingClass : '29 - 30th Feb (Weekend)',
    tags   : ['how to code'],
    skills : [{
      name : 'Design Fundamentals',
      img  : 'icon-type'
    }, {
      name : 'Backend Dev',
      img  : 'icon-console'
    }, {
      name : 'Front End Dev',
      img  : 'icon-html-code'
    }]
  }, {
    title           : 'Technology for Teachers',
    info            : "Keep up with your students! And learn how to excite them with tech of the future.",
    level           : 'Beginner',
    type            : 'workshop',
    location        : ['Sydney'],
    nextClass      : '17 - 18th Feb (Weekend)',
    followingClass : '29 - 30th Feb (Weekend)',
    tags   : ['how to code'],
    skills : [{
      name : 'Tech Theory',
      img  : 'icon-book'
    }, {
      name : 'Front End Design',
      img  : 'icon-artboard',
    }, {
      name : 'Front End Dev',
      img  : 'icon-html-code'
    }]
  }, {
    title           : 'Web App Developer',
    info            : "Learn web app development while keeping your day job.",
    level           : 'Beginner',
    type            : 'parttime',
    location        : ['Sydney'],
    nextClass      : '17 - 18th Feb (Weekend)',
    followingClass : '29 - 30th Feb (Weekend)',
    tags   : ['how to code'],
    skills : [{
      name : 'Lean Dev',
      img  : 'icon-lean'
    }, {
      name : 'Design Fundamentals',
      img  : 'icon-type'
    }, {
      name : 'User Experience',
      img  : 'icon-flow-chart'
    }, {
      name : 'Front End Dev',
      img  : 'icon-html-code'
    }, {
      name : 'Backend Dev',
      img  : 'icon-console'
    }]
  }, {
    title           : 'Fast Track',
    info            : "Fast track your way into becoming an awesome programmer and web developer. This 6 month instense program will give you the ins and outs of Ruby on Rails to help achieve your dreams.",
    level           : 'Beginner',
    type            : 'fulltime',
    location        : ['Sydney'],
    nextClass      : '17 - 18th Feb (Weekend)',
    followingClass : '29 - 30th Feb (Weekend)',
    tags   : ['how to code'],
    skills : [{
      name : 'User Interface',
      img  : 'icon-pasel'
    }, {
      name : 'Design Fundamentals',
      img  : 'icon-type'
    }, {
      name : 'User Experience',
      img  : 'icon-flow-chart'
    }, {
      name : 'Front End Dev',
      img  : 'icon-html-code'
    }, {
      name : 'Lean Dev',
      img  : 'icon-lean'
    }]
  }];

})

.service('LocationService', function() {

  this.nearestLocation = NearestCity;

  // Convert Degress to Radians
  function Deg2Rad( deg ) {
    return deg * Math.PI / 180;
  }

  function PythagorasEquirectangular( lat1, lon1, lat2, lon2 ) {
    lat1 = Deg2Rad(lat1);
    lat2 = Deg2Rad(lat2);
    lon1 = Deg2Rad(lon1);
    lon2 = Deg2Rad(lon2);
    var R = 6371; // km
    var x = (lon2-lon1) * Math.cos((lat1+lat2)/2);
    var y = (lat2-lat1);
    var d = Math.sqrt(x*x + y*y) * R;
    return d;
  }

  function NearestCity(latitude, longitude, locations) {
    var mindif=99999;
    var closest;

    for (index = 0; index < locations.length; ++index) {
      var dif =  PythagorasEquirectangular(latitude, longitude, locations[ index ][ 1 ], locations[ index ][ 2 ]);
      if ( dif < mindif ) {
        closest=index;
        mindif = dif;
      }
    }

    // return the nearest location
    var closestLocation = (locations[ closest ]);
    console.log('The closest location is ' + closestLocation[0]);
    return closestLocation;
  }
});
