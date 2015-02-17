angular.module('CoderFactory', ['ngAnimate'])

.controller('NavCtrl', function() {
  var nav = this;

  // variables
  nav.menu = 'Menu';
  nav.showMenu = false;

  // methods
  nav.toggleMenu = toggleMenu;

  function toggleMenu() {
    nav.showMenu = !nav.showMenu;
    if(nav.menu === 'Menu') {
      nav.menu = 'Close';
    } else {
      nav.menu = 'Menu';
    }
  }
})

.controller('CourseListCtrl', function(CoursesService, $timeout, $scope) {
  var courseList = this;

  // variables
  courseList.showWorkshops = true;
  courseList.showPtCourses = true;
  courseList.showFtCourses = true;
  courseList.allCourses    = CoursesService.allCourses;
  courseList.usersInterest = window.localStorage.usersInterest || 'how to code';
  courseList.usersLocation = window.localStorage.usersLocation || 'Sydney';

  // Get User's Coordinate from their Browser
    window.onload = function () {
      // HTML5/W3C Geolocation
      if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(UserLocation);
      }
      // Default to Sydney, NSW
      else {
        NearestCity(-33.867487, 151.206990);
      }
    };

    function UserLocation(position) {
      NearestCity( position.coords.latitude, position.coords.longitude );
    }

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

    var cities= [
    ["Sydney",    -33.867487,  151.206990],
    ["Melbourne", -28.083627,  -80.608109],
    ["Brisbane",  -27.471011,  153.023449],
    ["Adelaide",  -34.928621,  138.599959],
    ["Perth",     -31.953513,  115.857047]
    ];

    function NearestCity( latitude, longitude ) {
      var mindif=99999;
      var closest;

      for (index = 0; index < cities.length; ++index) {
          var dif =  PythagorasEquirectangular( latitude, longitude, cities[ index ][ 1 ], cities[ index ][ 2 ] );
          if ( dif < mindif )
          {
              closest=index;
              mindif = dif;
          }
      }

      // echo the nearest city
      var closestCity = (cities[ closest ]);
      console.log(closestCity[0]);
      window.localStorage.usersLocation = (closestCity[0]);
      courseList.usersLocation = window.localStorage.usersLocation || 'Sydney';
      $scope.$apply();
    }

  // methods
  courseList.toggleWorkshops = toggleWorkshops;
  courseList.togglePtCourses = togglePtCourses;
  courseList.toggleFtCourses = toggleFtCourses;
  courseList.locationChanged = locationChanged;
  courseList.interestChanged = interestChanged;

  function toggleWorkshops() {
    courseList.showWorkshops = !courseList.showWorkshops;
  }

  function togglePtCourses() {
    courseList.showPtCourses = !courseList.showPtCourses;
  }

  function toggleFtCourses() {
    courseList.showFtCourses = !courseList.showFtCourses;
  }

  function locationChanged(newVal) {
    console.log(newVal);
    window.localStorage.usersLocation = newVal;
  }

  function interestChanged(newVal) {
    console.log(newVal);
    window.localStorage.usersInterest = newVal;
  }

});
