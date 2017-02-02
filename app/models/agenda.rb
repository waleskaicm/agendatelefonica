class Agenda < ApplicationRecord
	validates :nome, presence: true
	validates :telefone, presence: true
end
