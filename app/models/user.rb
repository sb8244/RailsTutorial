class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, :email_format => {:message => 'is not an email'}
end
