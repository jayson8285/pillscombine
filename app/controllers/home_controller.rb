class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index, :more]
  
  def index
  end
end
