class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  protect_from_forgery with: :exception
end
