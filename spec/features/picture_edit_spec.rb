require 'spec_helper'

feature "add followers" do
  let!(:user) = Factory(:user)
  let!(:user2) = Factory(:user2)

  before do
  end

  scenario "send a follow via memory" do
      sign_in_as!(user)
      within(".mem"){ click_link "follow" }

  end

=begin
  scenario "approve a follower" do

  end

  scenario "deny a follower" do

  end
=end
end