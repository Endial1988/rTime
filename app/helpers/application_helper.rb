module ApplicationHelper
  def flash_helper

      f_names = [:notice, :warning, :message]
      fl = ''

      for name in f_names
        if flash[name]
          fl = fl + "<div class=\"notice\">#{flash[name]}</div>"
        end
      flash[name] = nil;
    end
    return fl
  end

	def company_logo
		image_tag "repro_logo_clear.png"
	end
end
