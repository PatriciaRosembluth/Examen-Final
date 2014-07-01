class Country < ActiveRecord::Base
	has_many :thermostats
	 validates :name, presence: {:message => "Es un campo obligatorio"}
	 validates :code, presence: {:message => "Es un campo obligatorio"}

	 validates :code, length: {minimum: 1, maximum: 2, :message => "El codigo solo puede tener maximo 2 digitos"}
end
