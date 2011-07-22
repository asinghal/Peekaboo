class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :notrack
  
  def notrack
    @track = nil
  end
end
