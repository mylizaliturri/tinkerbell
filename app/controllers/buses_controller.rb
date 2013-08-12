class BusesController < ApplicationController
  def new
    @bus=Bus.new()
  end


  def create
    @bus=Bus.new(params[:bus])
    if @bus.save
      #redirect_to root_url, :notice => 'Success'
    else
      render action: 'new'
    end
  end

def show
    @bus=Bus.all()
  end

  def edit
  end

  def delete
  end

  def list
    @bus=Bus.all()
  end
end
