# frozen_string_literal: true

class AddNotNullConstraintToCommentsNote < ActiveRecord::Migration[7.0]
  def change
    change_column_null :comments, :note, false
  end
end
