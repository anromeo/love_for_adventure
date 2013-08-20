require 'spec_helper'

feature "add followers" do
  let!(:user) = Factory(:user)
  let!(:user2) = Factory(:user2)
  let!(:mem) = Factory(:mem )


  scenario "send a follow via memory" do
      sign_in_as!(user)
      within(".mem-all-div"){ click_link "follow" }
      page.should have_content("following")
  end

=begin
  scenario "approve a follower" do

  end

  scenario "deny a follower" do

  end
=end
end