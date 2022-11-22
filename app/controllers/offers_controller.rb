class OffersController < ApplicationController
  before_action :set_offer, only: [:show]

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def show
  end

  def create

  end

  def destroy

  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
