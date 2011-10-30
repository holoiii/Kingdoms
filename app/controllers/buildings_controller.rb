class BuildingsController < ApplicationController
  def index
    @buildings = Building.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @buildings }
    end
  end

  def show
    @building = Building.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @building }
    end
  end

  def new
    @building = Building.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @building }
    end
  end

  def edit
    @building = Building.find(params[:id])
  end

  def create
    @building = Building.new(params[:building])

    respond_to do |format|
      if @building.save
        format.html { redirect_to @building, notice: 'Building was successfully created.' }
        format.json { render json: @building, status: :created, location: @building }
      else
        format.html { render action: "new" }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @building = Building.find(params[:id])

    respond_to do |format|
      if @building.update_attributes(params[:building])
        format.html { redirect_to @building, notice: 'Building was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @building = Building.find(params[:id])
    @building.destroy

    respond_to do |format|
      format.html { redirect_to buildings_url }
      format.json { head :ok }
    end
  end
end
