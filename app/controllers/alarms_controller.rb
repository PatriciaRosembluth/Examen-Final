#En este controlador se programa la alarma para un termostato.
#De este controlador compara con la temperatura actual y esta fuera del 
#rango la alarma se activa.
class AlarmsController < ApplicationController

  before_action :set_alarm, only: [:show, :edit, :update, :destroy]

  # GET /alarms
  # GET /alarms.json
  def index
    @alarms = Alarm.all
  end

  # GET /alarms/1
  # GET /alarms/1.json
  def show
    
  end

  # GET /alarms/new
  def new
    @alarm = Alarm.new
    @location = Location.find(params[:id])
    @alarm.location = @location
  end

  # GET /alarms/1/edit
  def edit
  end

  # POST /alarms
  # POST /alarms.json
  def create
    @alarm = Alarm.new(alarm_params)
    respond_to do |format|
      if @alarm.save
        format.html { redirect_to @alarm, notice: 'Alarma creada exitosamente' }
        format.json { render action: 'show', status: :created, location: @alarm }
      else
        format.html { render action: 'new' }
        format.json { render json: @alarm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alarms/1
  # PATCH/PUT /alarms/1.json
  def update
    respond_to do |format|
      if @alarm.update(alarm_params)
        format.html { redirect_to @alarm, notice: 'Alarma editada exitosamente' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @alarm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alarms/1
  # DELETE /alarms/1.json
  def destroy
    @alarm.destroy
    respond_to do |format|
      format.html { redirect_to alarms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alarm
      @alarm = Alarm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alarm_params
      params.require(:alarm).permit(:temp_max, :temp_min, :trigger_time, :location_id)
    end
end