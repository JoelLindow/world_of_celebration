require 'rails_helper'

RSpec.describe User, type: :model do
  it "can make user in database" do
    auth = {
      provider: "google_oauth2",
      uid: "25080717",
      info: {
        email: "TestUser@gmail.com",
        name: "TestUserPerson",
        image: 'https://avatars3.githubusercontent.com/u/25080717?s=460&v=4'
      },
      credentials: {
        token: ENV['google_test']
      }
    }

    # binding.pry
    User.from_omniauth(auth)
    user = User.last
    expect(user.uid).to eq("25080717")
    expect(user.name).to eq("TestUserPerson")
    expect(user.email).to eq("TestUser@gmail.com")
    expect(user.image).to eq('https://avatars3.githubusercontent.com/u/25080717?s=460&v=4')
    expect(user.token).to eq(ENV['google_test'])
  end



end
