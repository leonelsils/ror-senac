class Donation < ApplicationRecord
    belongs_to :category

    validates_presence_of :name, message: "Não pode ser vazio"

    enum porte: [:PEQUENO, :MEDIO, :GRANDE]
    enum sex: [:MACHO, :FEMEA]
end
