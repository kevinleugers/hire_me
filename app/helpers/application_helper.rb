module ApplicationHelper
  def page_title(title)
    content_for :title, "hire_me | " + title.to_s
  end
end
