class ComplaintCreator
  attr_reader :form, :user

  def initialize(form:, user:)
    @form = form
    @user = user
  end

  def call
    create_complaint
  end

  private

  def create_complaint
    user.complaints.create(
      title: form.title
    )
  end
end
