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

.controller('CourseListCtrl', function() {
  var courseList = this;

  // variables
  courseList.showWorkshops = true;
  courseList.showPtCourses = true;
  courseList.showFtCourses = true;

  // methods
  courseList.toggleWorkshops = toggleWorkshops;
  courseList.togglePtCourses = togglePtCourses;
  courseList.toggleFtCourses = toggleFtCourses;

  function toggleWorkshops() {
    courseList.showWorkshops = !courseList.showWorkshops;
  }

  function togglePtCourses() {
    courseList.showPtCourses = !courseList.showPtCourses;
  }

  function toggleFtCourses() {
    courseList.showFtCourses = !courseList.showFtCourses;
  }

});
