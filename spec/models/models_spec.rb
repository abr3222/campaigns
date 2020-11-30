
require 'rails_helper'

RSpec.describe Campaign, :type => :model do

  it "is valid with valid attributes" do
    user = Campaign.new(name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a title" do
    user = Campaign.new(title: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a email" do
    user = Campaign.new(email: nil)
    expect(user).to_not be_valid
  end

end
