class CourseRegistrationsController < ApplicationController
  before_action :set_course_registration, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course_registrations = CourseRegistration.all
    respond_with(@course_registrations)
  end

  def show
    respond_with(@course_registration)
  end

  def new
    @course_registration = CourseRegistration.new
    respond_with(@course_registration)
  end

  def edit
  end

  def create
    @course_registration = CourseRegistration.new(course_registration_params)
    @course_registration.save
    respond_with(@course_registration)
  end

  def update
    @course_registration.update(course_registration_params)
    respond_with(@course_registration)
  end

  def destroy
    @course_registration.destroy
    respond_with(@course_registration)
  end

  private
    def set_course_registration
      @course_registration = CourseRegistration.find(params[:id])
    end

    def course_registration_params
      params.require(:course_registration).permit(:course_id, :first_name, :last_name, :city, :country, :reason, :bio, :email)
    end
end
