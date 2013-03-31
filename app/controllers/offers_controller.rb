class OffersController < ApplicationController
  def index
    @offers = Entry.all
  end

  def new
    @offer = Entry.new
  end

  def create
    @offer = Entry.new(params[:entry])

    if @offer.save
      flash[:notice] = "Thanks for your entry!"
      redirect_to offers_path
    else
      flash[:alert] = "Oops. Something went wrong."
      render :new
    end
  end

  def list
    @offers = Entry.all
    @location_data = Entry.select(
      "city, AVG(`initial_offer`) as init, " +
      "AVG(`negotiated_offer`) as final, COUNT(*) as total").group(:city).order("total desc")
  end

  def coords
    @coords = Entry.all(select: "lng, lat, negotiated_offer")
    render :json => @coords
  end
end
