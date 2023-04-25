# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :note, presence: { message: 'O comentario é obrigatório.' }
  belongs_to :author, optional: true
  belongs_to :post
end
