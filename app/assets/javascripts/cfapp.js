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

.controller('CourseListCtrl', function(CoursesService) {
  var courseList = this;

  // variables
  courseList.showWorkshops = true;
  courseList.showPtCourses = true;
  courseList.showFtCourses = true;
  courseList.allCourses    = CoursesService.allCourses;
  courseList.usersLocation = window.localStorage.usersLocation || 'Sydney';
  courseList.usersInterest = window.localStorage.usersInterest || 'how to code';

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
