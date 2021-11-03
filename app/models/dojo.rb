class Dojo < ApplicationRecord
  validates :name,
  :city, :state, presence: { message: "Este campo es requerido."}

  validates :state,
  length: {minimum: 2, maximum: 2, message: "Este campo de tener solo 2 caracteres"}
    
end
