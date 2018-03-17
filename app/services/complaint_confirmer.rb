class ComplaintConfirmer
  attr_reader :complaint, :user

  def initialize(complaint:, user:)
    @complaint = complaint
    @user = user
  end

  def call
    toggle_confirmation
  end

  private

  def toggle_confirmation
    if complaint.confirmers.include? user
      complaint.confirmers.delete(user)
    else
      complaint.confirmers << user
    end
  end
end
