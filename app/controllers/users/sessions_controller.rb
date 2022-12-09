class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _opts = {})
    render json: { status: 200, message: 'Login successfully!', user: current_user }, status: :ok
  end

  def respond_to_on_destroy
    user = user_from_token

    if user
      render json: { status: 200, message: 'User logged out successfully' }, status: :ok
    else
      render json: { status: 401, message: 'Fail to logout user', errors: resource.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def user_from_token
    jwt_payload = JWT.decode(request.headers['Authorization'].split[1],
                             Rails.application.credentials.devise[:jwt_secret_key]).first
    User.find(jwt_payload['sub'])
  end
end
