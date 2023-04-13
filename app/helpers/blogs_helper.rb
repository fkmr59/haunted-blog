# frozen_string_literal: true

module BlogsHelper
  include ActionView::Helpers::SanitizeHelper

  def format_content(blog)
    sanitize(blog.content, tags: %w(br), attributes: %w())
  end
end
