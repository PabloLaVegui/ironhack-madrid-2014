module ApplicationHelper

  def flash_message
    if flash[:error]
      show_flash(flash[:error], "error")
    elsif flash[:notice]
      show_flash(flash[:notice], "notice")
    end
  end

  def previus_page?
    params[:page].present? && params[:page].to_i > 1
  end

  def next_page?
    current_page = params[:page].to_i
    # except: desconcatenar
    total = @challenges.except(:limit).except(:offset).count
    total_pages = (total / 10) + 1

    current_page < total_pages
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
