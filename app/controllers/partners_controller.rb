class PartnersController < ApplicationController
  before_action :set_partner, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @partners = Partner.all
    respond_with(@partners)
  end

  def show
    respond_with(@partner)
  end

  def new
    @partner = Partner.new
    respond_with(@partner)
  end

  def edit
  end

  def create
    @partner = Partner.new(partner_params)
    @partner.save
    respond_with(@partner)
  end

  def update
    @partner.update(partner_params)
    respond_with(@partner)
  end

  def destroy
    @partner.destroy
    respond_with(@partner)
  end

  private
    def set_partner
      @partner = Partner.find(params[:id])
    end

    def partner_params
      params.require(:partner).permit(:name, :company, :email, :phone, :message, :reason)
    end
end
