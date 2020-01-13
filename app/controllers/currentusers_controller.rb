class CurrentusersController < ApplicationController
  def index
    render json: User.order(selected_at: 'desc').first
  end
end