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

  courseList.webDesign     = true;
  courseList.ror           = true;
  courseList.wordpress     = true;
  courseList.tech          = true;
  courseList.syd           = true;
  courseList.mel           = true;
  courseList.bns           = true;
  courseList.ade           = true;
  courseList.perth         = true;

  // methods
  courseList.toggleWorkshops = toggleWorkshops;
  courseList.togglePtCourses = togglePtCourses;
  courseList.toggleFtCourses = toggleFtCourses;
  courseList.slcIntChanged   = slcIntChanged;
  courseList.slcLocChanged   = slcLocChanged;

  function toggleWorkshops() {
    courseList.showWorkshops = !courseList.showWorkshops;
  }

  function togglePtCourses() {
    courseList.showPtCourses = !courseList.showPtCourses;
  }

  function toggleFtCourses() {
    courseList.showFtCourses = !courseList.showFtCourses;
  }

  function slcIntChanged(newVal) {
    console.log(newVal);
    courseList.showWorkshops = true;
    courseList.showPtCourses = true;
    courseList.showFtCourses = true;
    if(newVal === 'web design') {
      courseList.webDesign = true;
      courseList.ror = false;
      courseList.wordpress = false;
      courseList.tech = false;
    } else if(newVal === 'wordpress') {
      courseList.webDesign = false;
      courseList.ror = false;
      courseList.wordpress = true;
      courseList.tech = false;
    } else if(newVal === 'technology') {
      courseList.webDesign = false;
      courseList.ror = false;
      courseList.wordpress = false;
      courseList.tech = true;
    } else if(newVal === 'ruby on rails') {
      courseList.webDesign = false;
      courseList.ror = true;
      courseList.wordpress = false;
      courseList.tech = false;
    } else if(newVal === 'how to code') {
    courseList.webDesign = true;
    courseList.ror = true;
    courseList.wordpress = true;
    courseList.tech = true;
    }
  }

  function slcLocChanged(newVal) {
    console.log(newVal);
    if(newVal === 'Melbourne') {
      courseList.syd           = false;
      courseList.mel           = true;
      courseList.bns           = false;
      courseList.ade           = false;
      courseList.perth         = false;
    } else if(newVal === 'Sydney') {
      courseList.syd           = true;
      courseList.mel           = false;
      courseList.bns           = false;
      courseList.ade           = false;
      courseList.perth         = false;
    } else if(newVal === 'Adelaide') {
      courseList.syd           = false;
      courseList.mel           = false;
      courseList.bns           = false;
      courseList.ade           = true;
      courseList.perth         = false;
    } else if(newVal === 'Perth') {
      courseList.syd           = false;
      courseList.mel           = false;
      courseList.bns           = false;
      courseList.ade           = false;
      courseList.perth         = true;
    } else if(newVal === 'Brisbane') {
      courseList.syd           = false;
      courseList.mel           = false;
      courseList.bns           = true;
      courseList.ade           = false;
      courseList.perth         = false;
    }
  }

});
