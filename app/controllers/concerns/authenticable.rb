module Authenticable
  extend ActiveSupport::Concern

  include do
    include DeviseTokenAuth::Concerns::SetUserByToken
    before_action  : authenticate_user!
  end
end