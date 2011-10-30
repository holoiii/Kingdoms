class KingdomsController < ApplicationController
  def index
    @kingdoms = Kingdom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kingdoms }
    end
  end

  def show
    @kingdom = Kingdom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kingdom }
    end
  end

  def new
    @kingdom = Kingdom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kingdom }
    end
  end

  def edit
    @kingdom = Kingdom.find(params[:id])
  end

  def create
    @kingdom = Kingdom.new(params[:kingdom])

    respond_to do |format|
      if @kingdom.save
        format.html { redirect_to @kingdom, notice: 'Kingdom was successfully created.' }
        format.json { render json: @kingdom, status: :created, location: @kingdom }
      else
        format.html { render action: "new" }
        format.json { render json: @kingdom.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @kingdom = Kingdom.find(params[:id])

    respond_to do |format|
      if @kingdom.update_attributes(params[:kingdom])
        format.html { redirect_to @kingdom, notice: 'Kingdom was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @kingdom.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @kingdom = Kingdom.find(params[:id])
    @kingdom.destroy

    respond_to do |format|
      format.html { redirect_to kingdoms_url }
      format.json { head :ok }
    end
  end
end