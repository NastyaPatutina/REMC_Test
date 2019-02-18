# frozen_string_literal: true

class ApplicationController < ActionController::API
  # GET /
  def index
    render json: "Hello"
  end
end
