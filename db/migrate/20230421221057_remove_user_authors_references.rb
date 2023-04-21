# frozen_string_literal: true

class RemoveUserAuthorsReferences < ActiveRecord::Migration[7.0]
  def change
    remove_reference :authors, :user, foreign_key: true
  end
end
