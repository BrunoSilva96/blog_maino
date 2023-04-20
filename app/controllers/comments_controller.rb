# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :load_comment, only: %i[update destroy]

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new
    @comment.attributes = comment_params

    @comment.save!
  end

  def update
    @comment.attributes = comment_params
    @comment.save!
  end

  def destroy
    @comment.destroy!
  end

  private

  def load_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    return {} unless params.key?(:comment)

    params.require(:comment).permit(:note)
  end
end
