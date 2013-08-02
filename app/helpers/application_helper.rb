module ApplicationHelper
  # returns the full title on a per-page basic
  def full_title(page_title)
    base_title = 'Google in RoR'
    if page_title.empty?
      base_title
    else
      "#{base_title} - #{page_title}"
    end
  end
end
