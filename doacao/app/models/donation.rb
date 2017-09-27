class Donation < ApplicationRecord
    belongs_to :category

    validates_presence_of :name, message: "Não pode ser vazio"

    enum porte: [:little, :medio, :big]
    enum sex: [:male, :female]
end
