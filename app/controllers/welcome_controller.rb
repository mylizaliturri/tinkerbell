class WelcomeController < ApplicationController
  def index
    @rings=Ring.all()
  end
end
