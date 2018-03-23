module ApplicationHelper
  def message(flash)
    flash.each do |type, msg|
      if type == "notice"
        haml_tag :p, msg, class: "alert alert alert-success", role: "alert"
      else
        haml_tag :p, msg, class: "alert alert alert-danger", role: "alert"
      end
    end
  end
end
