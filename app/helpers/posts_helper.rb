# frozen_string_literal: true

module PostsHelper
  def author_post_delete?(post, current_author)
    author_signed_in? && current_author == post.author
  end
end
