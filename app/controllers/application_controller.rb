class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :set_meta_data
  
  def set_meta_data(title="App Title", keywords="app, key, words", description="App description.")
    @meta_title, @meta_keywords, @meta_description = title, keywords, description
  end
end
