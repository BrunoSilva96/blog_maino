# frozen_string_literal: true

class AuthorsController < ApplicationController
  before_action :load_author, only: %i[update destroy]

  def index
    @authors = Author.all
  end

  def create
    @author = Author.new
    @author.attributes = author_params

    @author.save!
  end

  def update
    @author = Author.find(params[:id])
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
    return {} unless params.key?(:author)

    params.require(:author).permit(:nickname)
  end
end
