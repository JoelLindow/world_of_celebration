require 'rails_helper'

feature 'User' do
  scenario 'can log in with oauth' do
    stub_out_omniauth

    visit root_path
    # within '.loginBtn' do
    # VCR.use_cassette('spec/features/users/google_oauth_spec.rb') do
    click_on 'Sign in with Google'
    # end
    # end
    expect(current_path).to eq(countries_path)

  end
end

def stub_out_omniauth
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
    provider: "google_oauth2",
    uid: "25080717",
    info: {
      email: "TestUser@gmail.com",
      name: "TestUserGPerson",
      image: 'https://avatars3.githubusercontent.com/u/25080717?s=460&v=4'
    },
    credentials: {
      token: ENV['google_test']
    }
    })
  end
