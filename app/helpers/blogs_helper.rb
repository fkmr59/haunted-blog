# frozen_string_literal: true

module BlogsHelper
  def format_content(blog)
    blog_content = h(blog.content).gsub("\n", '<br>')
    safe_tags = %w[br]
    sanitize(blog_content, tags: safe_tags, attributes: [], encode_special_chars: true)
  end
end
