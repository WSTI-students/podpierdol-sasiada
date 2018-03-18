class ComplaintsController < ApplicationController
  def index
    @complaints = Complaint.includes(:confirmers).all
  end

  def new
    complaint_form = ComplaintForm.new
    recipients = Complaint.all_recipients

    render locals: { complaint_form: complaint_form, recipients: recipients }
  end

  def create
    complaint_form = ComplaintForm.new(complaint_params)
    ComplaintCreator.new(form: complaint_form, user: current_user).call

    flash[:notice] = "Podpierdolono sąsiada"
    redirect_to root_path
  end

  def confirm
    @complaint = Complaint.find(params[:complaint_id])
    ComplaintConfirmer.new(complaint: @complaint, user: current_user).call

    redirect_to root_path
  end

  private

  def complaint_params
    params.require(:complaint_form).permit(:complaint_title) 
  end
end
