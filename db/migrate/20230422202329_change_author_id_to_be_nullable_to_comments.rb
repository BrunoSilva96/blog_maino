# frozen_string_literal: true

class ChangeAuthorIdToBeNullableToComments < ActiveRecord::Migration[7.0]
  def change
    change_column :comments, :author_id, :bigint, null: true
  end
end
