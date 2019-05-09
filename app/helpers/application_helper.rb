module ApplicationHelper
  def display_date(date)
    if date
      formatted = date.strftime("%e %b %Y")
    else
      formatted = ' '
    end
  end
  def human_boolean(boolean)
      boolean ? 'Active' : 'Inactive'
  end
end
