# frozen_string_literal: true

class Post < ApplicationRecord
  validates :body, presence: { message: 'O corpo é obrigatório.' }
  belongs_to :author
  has_many :comments, dependent: :destroy
end
