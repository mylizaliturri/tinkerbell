class LocationsController < ApplicationController
  def delete
    @loc= Location.find(params[:id])
    if @loc.destroy
      redirect_to root_url, :notice => 'Success'
    else
      render action: 'show'
    end
  end

  def update

  end

  def edit
    @loc= Location.find(params[:id])
  end

  def show
    @loc= Location.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @loc }
    end
  end

  def last
    @loc= Location.last
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @loc {:latitude => loc.latitude, :longitude => loc.longitude} }
    end
  end

  def destroy_all
    Location.destroy_all()
  end

  def index
    @loc=Location.all().reverse!
  end

  def create
    @loc=Location.new(params[:location])
    if @loc.save
      #redirect_to root_url, :notice => 'Success'
    else
      render action: 'new'
    end
  end

  def new
    @loc=Location.new()
  end
end
