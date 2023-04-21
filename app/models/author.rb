# frozen_string_literal: true

class Author < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: { case_sensitive: false }

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
