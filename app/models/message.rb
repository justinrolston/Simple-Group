class Message < ActiveRecord::Base
  
  validates_presence_of :subject
  validates_presence_of :body
  validates_presence_of :to
end
