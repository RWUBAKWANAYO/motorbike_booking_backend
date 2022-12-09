class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: { status: 200, message: 'User registered successfully!', user: current_user }, status: :ok
    else
      render json: { message: 'Fail to register user', errors: resource.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
