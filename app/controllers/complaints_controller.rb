class ComplaintsController < ApplicationController
  def index
    @complaints = Complaint.includes(:confirmers).all
  end
end
