class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, :email_format => {:message => 'is not an email'},
    uniqueness: true
end
