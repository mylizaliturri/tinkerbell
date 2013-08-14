class RingsController < ApplicationController
  # GET /rings
  # GET /rings.json
  def index
    @rings = Ring.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rings }
    end
  end

  # GET /rings/1
  # GET /rings/1.json
  def show
    @ring = Ring.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ring }
    end
  end

  # GET /rings/new
  # GET /rings/new.json
  def new
    @ring = Ring.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ring }
    end
  end

  # GET /rings/1/edit
  def edit
    @ring = Ring.find(params[:id])
  end

  # POST /rings
  # POST /rings.json
  def create
    @ring = Ring.new(params[:ring])

    respond_to do |format|
      if @ring.save
        format.html { redirect_to @ring, notice: 'Ring was successfully created.' }
        format.json { render json: @ring, status: :created, location: @ring }
      else
        format.html { render action: "new" }
        format.json { render json: @ring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rings/1
  # PUT /rings/1.json
  def update
    @ring = Ring.find(params[:id])

    respond_to do |format|
      if @ring.update_attributes(params[:ring])
        format.html { redirect_to @ring, notice: 'Ring was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rings/1
  # DELETE /rings/1.json
  def destroy
    @ring = Ring.find(params[:id])
    @ring.destroy

    respond_to do |format|
      format.html { redirect_to rings_url }
      format.json { head :no_content }
    end
  end
end
