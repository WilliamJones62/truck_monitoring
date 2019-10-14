module ApplicationHelper
  def display_date(date)
    if date
      formatted = date.strftime("%e %b %Y")
    else
      formatted = ' '
    end
  end
  def display_time(time)
    if time
      formatted = time.strftime("%H %M %p")
    else
      formatted = ' '
    end
  end
  def active_boolean(boolean)
      boolean ? 'Active' : 'Inactive'
  end
  def yes_boolean(boolean)
      boolean ? 'Yes' : 'No'
  end
  def service_boolean(boolean)
      boolean ? 'Out of service' : 'In service'
  end
  def status_boolean(boolean)
      boolean ? 'Complete' : 'Incomplete'
  end
end
