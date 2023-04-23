# frozen_string_literal: true

class AuthorsController < ApplicationController
  before_action :load_author, only: %i[update destroy]

  def update
    @author.attributes = author_params
    @author.save!
  end

  def destroy
    @author.destroy!
  end

  private

  def load_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:email, :nickname)
  end
end
