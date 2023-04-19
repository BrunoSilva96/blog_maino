# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :author, optional: true
  belongs_to :post
end
