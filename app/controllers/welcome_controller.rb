class WelcomeController < ApplicationController
  def index
    flash[:notice] = "good"
  end
end
