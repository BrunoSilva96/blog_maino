# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :author
  has_many :comment, dependent: :destroy
end