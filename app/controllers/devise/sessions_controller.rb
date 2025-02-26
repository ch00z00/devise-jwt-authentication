class Devise::SessionsController < DeviseController
  respond_to :json

  def create
    super do |resource|
      if request.format.json?
        render json: { user: resource.as_json(except: [:password, :reset_password_token]) }, status: :ok and return
      end
    end
  end
end
