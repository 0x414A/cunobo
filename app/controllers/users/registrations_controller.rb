class Users::RegistrationsController < Devise::RegistrationsController
  # You can pass a block to Devise::RegistrationsController#create
  # to perform actions on the created resource before the create action finishes.
  # See: https://github.com/plataformatec/devise/blob/master/app/controllers/devise/registrations_controller.rb#L18
  def create
    super { create_student! }
  end

  private

  def create_student!
    Student.create(user_id: resource.id)
  end
end
