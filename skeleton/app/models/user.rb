# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: {message: "Password can\'t be blank"}
  validates :session_token, presence: true, uniqueness: true
  validates :Password, length: {minimum: 6, allow_nil: true}
  
end
