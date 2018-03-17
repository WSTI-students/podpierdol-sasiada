class ComplaintsController < ApplicationController
  def index
    @complaints = Complaint.includes(:confirmers).all
  end

  def new
    @complaint = Complaint.new
    @recipients = Recipient.styles
  end
end
