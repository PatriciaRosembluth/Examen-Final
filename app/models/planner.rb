class Planner < ActiveRecord::Base
  belongs_to :thermostat

  validates :week_day, :temperature, :schedule, presence: {:message => "Es un campo obligatorio"}

  validates :temperature, numericality: {:message => "La temperatura solo permite enteros"}
  validates :temperature, numericality: {greater_than: -20, less_than: 60, :message => "La temperatura maxima debe ser mayor a -20 y menor a 60" }
end
