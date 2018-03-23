module ComplaintsHelper
  def confirm_btn_label(complaint)
    confirmers_count = complaint.confirmers.count
    return "Potwierdź" if confirmers_count.zero?
    "Potwierdź (#{confirmers_count})"
  end

  def confirm_btn_class(complaint, user)
    return "btn btn-outline-primary" unless complaint.confirmers.include?(user)
    "btn btn-primary"
  end
end
