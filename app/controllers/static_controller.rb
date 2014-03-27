class StaticController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index]
  def index
    @subscriber = Subscriber.new
  end

  def about

  end

end
