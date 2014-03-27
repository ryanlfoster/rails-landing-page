class Subscriber < ActiveRecord::Base
  #
  # Validations
  #
  validates_presence_of :email
end
