#Este controlador se usar para la planificacion de temperaturas por dia en el thermostato

class PlannersController < ApplicationController
  before_action :set_planner, only: [:show, :edit, :update, :destroy]

  # GET /planners
  # GET /planners.json
  def index
   @planners = Planner.all
   
  end

  # GET /planners/1
  # GET /planners/1.json
  def show
  end

  # GET /planners/new
  def new
    @planner = Planner.new
    @thermostat = Thermostat.find(params[:id])
    @planner.thermostat = @thermostat
    @planner.default = 20
    
  end
  # GET /planners/1/edit
  def edit
  end

  def history
    @thermostat = Thermostat.find(params[:id])
    @planners = @thermostat.planners
  end

  # POST /planners
  # POST /planners.json
  def create
    @planner = Planner.new(planner_params)

    respond_to do |format|
      if @planner.save
        format.html { redirect_to @planner, notice: 'Cronograma creado exitosamente.' }
        format.json { render action: 'show', status: :created, location: @planner }
      else
        format.html { render action: 'new' }
        format.json { render json: @planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planners/1
  # PATCH/PUT /planners/1.json
  def update
    respond_to do |format|
      if @planner.update(planner_params)
        format.html { redirect_to @planner, notice: 'Planner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planners/1
  # DELETE /planners/1.json
  def destroy
    @planner.destroy
    respond_to do |format|
      format.html { redirect_to planners_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planner
      @planner = Planner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planner_params
      params.require(:planner).permit(:week_day, :temperature, :default, :schedule, :thermostat_id)
    end
end
