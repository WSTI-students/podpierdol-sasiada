class ComplaintsController < ApplicationController
  def index
    @complaints = Complaints.all
  end
end
