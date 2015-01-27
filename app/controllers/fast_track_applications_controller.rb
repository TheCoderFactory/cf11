class FastTrackApplicationsController < ApplicationController
  before_action :set_fast_track_application, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fast_track_applications = FastTrackApplication.all
    respond_with(@fast_track_applications)
  end

  def show
    respond_with(@fast_track_application)
  end

  def new
    @fast_track_application = FastTrackApplication.new
    respond_with(@fast_track_application)
  end

  def edit
  end

  def create
    @fast_track_application = FastTrackApplication.new(fast_track_application_params)
    @fast_track_application.save
    respond_with(@fast_track_application)
  end

  def update
    @fast_track_application.update(fast_track_application_params)
    respond_with(@fast_track_application)
  end

  def destroy
    @fast_track_application.destroy
    respond_with(@fast_track_application)
  end

  private
    def set_fast_track_application
      @fast_track_application = FastTrackApplication.find(params[:id])
    end

    def fast_track_application_params
      params.require(:fast_track_application).permit(:first_name, :last_name, :city, :country, :email, :age, :gender, :one_line, :reason, :info, :passion, :experience, :challenge, :special, :links, :referral, :visa, :programme_choice)
    end
end
