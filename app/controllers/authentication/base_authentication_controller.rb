module Authentication
  class BaseAuthenticationController < ApplicationController
    skip_before_action :authenticate
  end
end
