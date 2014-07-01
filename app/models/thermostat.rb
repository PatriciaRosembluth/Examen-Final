class Thermostat < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :history_thermostats
  has_many :issues
  has_many :planners

  validates :serial,uniqueness: {case_sensitive: false, :message => "Este termostato ya fue registrado"}	
  validates :serial, presence: {:message => "Es un campo obligatorio"}
  validates :serial, length: {minimum: 5, maximum: 10, :message => "El serial debe tener minimo 5 y maximo 10 caracteres"}
  validates :serial, format: {with: /\A[A-Z0-9]+\z/, message: "Solo ingresar letras mayusculas y numeros"}

  validates :temperature, presence: {:message => "Es un campo obligatorio"}
  validates :temperature, numericality: {:message => "La temperatura solo permite enteros"}
  validates :temperature, numericality: {greater_than: -20, less_than: 60, :message => "La temperatura debe ser mayor a -20 y menor a 60" }


  
end
