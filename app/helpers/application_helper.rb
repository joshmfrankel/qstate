module ApplicationHelper

    # Title Helper
    def full_title(page_title)
        base_title = "Quint State Conference at UGA"

        if page_title.empty?
            base_title
        else
            "#{page_title} | #{base_title}"
        end
    end

end
