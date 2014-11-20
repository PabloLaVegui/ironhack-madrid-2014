module ApplicationHelper

  def flash_message
    if flash[:error]
      show_flash(flash[:error], "error")
    elsif flash[:notice]
      show_flash(flash[:notice], "notice")
    end
  end



  private

  def show_flash message, css_class
    content_tag :div, class: "message #{css_class}" do
      content_tag :p do
        message
      end
    end
  end

end
