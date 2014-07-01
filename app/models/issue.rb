class Issue < ActiveRecord::Base
  belongs_to :thermostat

  validates :description, presence: {:message => "Es un campo obligatorio"}

  def change_status
   self.status = 'CANCELADO'
   self.description = "Problema cancelado"
   self.save!
end

def open
	self.status = 'ABIERTO'
	self.save!
end

end
