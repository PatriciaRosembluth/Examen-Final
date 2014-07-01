class Location < ActiveRecord::Base
  has_many :thermostats
  belongs_to :user
  has_one :alarm

  validates :name, :city, :address, :presence => true

  validates :name, :city, :address, presence:{:message => "Es un campo obligatorio"}
  validates :name, length: {minimum: 4, maximum: 20, :message => "La propiedad debe tener minimo 4 y maximo 20 caracteres"}
  validates :city, length: {minimum: 4, maximum: 20, :message => "La ciudad debe tener minimo 4 y maximo 20 caracteres"}
  validates :address, length: {minimum: 4, maximum: 20, :message => "La direccion debe tener minimo 4 y maximo 20 caracteres"}



end
