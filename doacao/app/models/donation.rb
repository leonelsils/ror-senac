class Donation < ApplicationRecord
	belongs_to :category

	validates_presence_of :name, message: "Não pode ser vazio"

	mount_uploader :photo, PhotoUploader

	enum porte: 	[:PEQUENO, :MEDIO, :GRANDE]
	enum sex: 		[:MACHO, :FEMEA]
	enum status: 	[:INATIVO, :ATIVO]
	
	before_save :default_values
	
	def default_values
	   self.status ||= 1 # note self.status = 'P' if self.status.nil? might be safer (per @frontendbeauty)
	end
end
