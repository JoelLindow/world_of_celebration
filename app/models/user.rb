class User < ApplicationRecord
  has_many :favorites

  def self.from_omniauth(auth)
    user = User.where(uid: auth["uid"]).first

    if user && user.token != auth["credentials"]["token"]
      user.token = auth["credentials"]["token"]
      user.save
    elsif user.nil?
      user = User.create(
        uid: auth[:uid],
        name: auth[:info][:name],
        email: auth[:info][:email],
        image: auth[:info][:image],
        token: auth[:credentials][:token]
      )
    end
    user
  end
end
