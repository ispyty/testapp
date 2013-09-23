class AreasController < ApplicationController
  before_action :set_area, only: [:show, :edit, :update, :destroy]
  layout "area"

  def state
    @states = Store.distinct.order(:state).pluck(:state)

    if !params[:state].nil?
      @cities = Store.distinct.where(:state => params[:state]).order(:city).pluck(:city)
    end
    
    @stores_in_state = Store.where(:state => params[:state])

  end

  def city
    @states = Store.distinct.order(:state).pluck(:state)
    @cities = Store.distinct.where(:state => params[:state]).order(:city).pluck(:city)
    @stores_in_city = Store.where(:state => params[:state], :city => params[:city])
  end

  def states
    @states = Store.distinct.order(:state).pluck(:state)
  end

  def cities
    @cities = Store.distinct.where(:state => params[:state]).order(:city).pluck(:city)
  end

  # GET /areas
  # GET /areas.json
  def index
    @areas = Area.all
    @states = Store.distinct.order(:state).pluck(:state)

    if params[:state].nil?
      @cities = Store.distinct.where(:state => params[:state]).order(:city).pluck(:city)
      @stores_in_state = Store.where(:state => params[:state])
    end
  end

  # GET /areas/1
  # GET /areas/1.json
  def show
    
  end

  # GET /areas/new
  def new
    @area = Area.new
  end

  # GET /areas/1/edit
  def edit
  end

  # POST /areas
  # POST /areas.json
  def create
    @area = Area.new(area_params)

    respond_to do |format|
      if @area.save
        format.html { redirect_to @area, notice: 'Area was successfully created.' }
        format.json { render action: 'show', status: :created, location: @area }
      else
        format.html { render action: 'new' }
        format.json { render json: @area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /areas/1
  # PATCH/PUT /areas/1.json
  def update
    respond_to do |format|
      if @area.update(area_params)
        format.html { redirect_to @area, notice: 'Area was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /areas/1
  # DELETE /areas/1.json
  def destroy
    @area.destroy
    respond_to do |format|
      format.html { redirect_to areas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_params
      params.require(:area).permit(:display_name, :internal_name, :area_type, :latitude, :longitude)
    end
end
