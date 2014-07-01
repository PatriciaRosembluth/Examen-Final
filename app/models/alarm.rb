class Alarm < ActiveRecord::Base
  belongs_to :location

  validates :temp_max, :temp_min, :trigger_time, presence:{:message => "Es un campo obligatorio"}
  validates :temp_max, :temp_min, :trigger_time, numericality: {:message => "Solo permite numeros"}
  validates :temp_max, :temp_min, numericality: {greater_than: -20, less_than: 60, :message => "La temperatura debe ser mayor a -20 y menor a 60" }
  validates :trigger_time, numericality: {greater_than: 0, less_than: 20, :message => "El tiempo de espera debe ser mayor a 0 y menor a 20 minutos" }

end
