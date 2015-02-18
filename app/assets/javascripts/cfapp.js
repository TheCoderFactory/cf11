angular.module('CoderFactory', ['ngAnimate'])

.run(function(LocationService) {

  var lng,
      lat,
      cities = [
  ["Sydney",    -33.867487,  151.206990],
  ["Melbourne", -28.083627,  -80.608109],
  ["Brisbane",  -27.471011,  153.023449],
  ["Adelaide",  -34.928621,  138.599959],
  ["Perth",     -31.953513,  115.857047]
  ];

  // HTML5/W3C Geolocation
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      lng = position.coords.latitude;
      lat = position.coords.longitude;

      var usersCity = LocationService.nearestLocation(lng, lat, cities);

      window.localStorage.usersLocation = usersCity[0];

    }, function(error) {
      console.log(error);
    });
  }
  // Default to Sydney, NSW
  else {
    lng = -33.867487;
    lat = 151.206990;
  }

})

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
