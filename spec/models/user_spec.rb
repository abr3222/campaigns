
require 'rails_helper'

RSpec.describe User, :type => :model do

  it "is valid with valid attributes" do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a title" do
  user = User.new(titile: nil)
  expect(user).to_not be_valid
  end

  it "is not valid without a email" do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a role assign" do
    user = User.new(role_id: nil)
    expect(user).to_not be_valid
  end

end