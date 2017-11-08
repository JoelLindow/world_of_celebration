require 'rails_helper'

describe Favorite, type: :model do
  it "is valid if all attributes are properly passed" do
    user = User.create!(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
    favorite = Favorite.create!(name: "Holiday Name", date_observed: "January 01", wikipedia_search: "Wikipedia URL", google_search: "Google URL", country_name: "United States of America", country_flag_url: "Flag URL", user_id: user.id)

    expect(favorite).to be_valid
  end

  it "is invalid without name" do
    user = User.create!(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
    favorite = Favorite.create(date_observed: "January 01", wikipedia_search: "Wikipedia URL", google_search: "Google URL", country_name: "United States of America", country_flag_url: "Flag URL", user_id: user.id)

    expect(favorite).to be_invalid
  end

  it "is invalid without date_observed" do
    user = User.create(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
    favorite = Favorite.create(name: "Holiday Name", wikipedia_search: "Wikipedia URL", google_search: "Google URL", country_name: "United States of America", country_flag_url: "Flag URL", user_id: user.id)

    expect(favorite).to be_invalid
  end

  it "is invalid without wikipedia_search" do
    user = User.create(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
    favorite = Favorite.create(name: "Holiday Name", date_observed: "January 01", google_search: "Google URL", country_name: "United States of America", country_flag_url: "Flag URL", user_id: user.id)

    expect(favorite).to be_invalid
  end

  it "is invalid without google_search" do
    user = User.create(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
    favorite = Favorite.create(name: "Holiday Name", date_observed: "January 01", wikipedia_search: "Wikipedia URL", country_name: "United States of America", country_flag_url: "Flag URL", user_id: user.id)

    expect(favorite).to be_invalid
  end

  it "is invalid without country_name" do
    user = User.create(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
    favorite = Favorite.create(name: "Holiday Name", date_observed: "January 01", wikipedia_search: "Wikipedia URL", google_search: "Google URL", country_flag_url: "Flag URL", user_id: user.id)

    expect(favorite).to be_invalid
  end

  it "is invalid without country_flag_url" do
    user = User.create(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
    favorite = Favorite.create(name: "Holiday Name", date_observed: "January 01", wikipedia_search: "Wikipedia URL", google_search: "Google URL", country_name: "United States of America", user_id: user.id)

    expect(favorite).to be_invalid
  end

  it "is invalid without user_id" do
    user = User.create(uid: "Uid", name: "Username", email: "UserEmail", image: "ImageUrl", token: "Token")
    favorite = Favorite.create(name: "Holiday Name", date_observed: "January 01", wikipedia_search: "Wikipedia URL", google_search: "Google URL", country_name: "United States of America", country_flag_url: "Flag URL")

    expect(favorite).to be_invalid
  end
end
