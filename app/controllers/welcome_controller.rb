class WelcomeController < ApplicationController
  def index
    @rings=Ring.all()
    @loc=Location.all()
  end
end
