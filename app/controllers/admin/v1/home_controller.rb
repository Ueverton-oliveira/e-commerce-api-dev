module Admin::v1
  class HomeController < ApiController
    def index
      render json: {message: 'Uhull!'}
    end
  end
end