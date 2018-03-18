module ComplaintsHelper
  def confirm_btn_label(complaint)
    confirmers_count = complaint.confirmers.count
    return "Potwierdź" if confirmers_count.zero?
    "Potwierdź (#{confirmers_count})"
  end
end
