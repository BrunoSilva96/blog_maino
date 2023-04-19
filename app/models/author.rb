# frozen_string_literal: true

class Author < ApplicationRecord
  validates :nickname, presence: true, uniqueness: { case_sensitive: false }

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
end
