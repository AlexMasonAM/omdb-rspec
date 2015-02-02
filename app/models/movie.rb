class Movie < ActiveRecord::Base
  def set_title(title)
    self.title = title
  end
end
