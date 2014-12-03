module CommentsHelper

  def author_display_name comment
    str = comment.user.username.capitalize
    unless comment.user.plain?
      str += " (#{comment.user.role})"
    end
  end

end
