class ComplaintsController < ApplicationController
  def index
    @complaints = Complaint.includes(:confirmers).all
  end

  def new
    @complaint = Complaint.new
  end

  def confirm
    @complaint = Complaint.find(params[:complaint_id])
    ComplaintConfirmer.new(complaint: @complaint, user: current_user).call

    redirect_to root_path
  end
end
