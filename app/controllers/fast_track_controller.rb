class FastTrackController < ApplicationController
  def index
  	@course_registration = CourseRegistration.new
  	@partner = Partner.new
  end
end
