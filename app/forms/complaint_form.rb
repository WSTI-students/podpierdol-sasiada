class ComplaintForm
  include ActiveModel::Model
  attr_accessor :params, :complaint_title

  def initialize(params)
    @params = params
    assign_attributes
  end

  private

  def assign_attributes
    return unless @params
    @complaint_title = params[:complaint_title]
  end
end
