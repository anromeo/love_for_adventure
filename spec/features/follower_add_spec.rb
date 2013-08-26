require 'spec_helper'

feature "add followers" do
  let!(:user){ Factory(:user) }
  let!(:user2){ Factory(:user) }
  let!(:mem){ Factory(:mem, user_id: user2.id ) }

  before do
      sign_in_as!(user)
      within(".mem-all-div"){ click_link "Follow" }
      page.should have_content("following")
  end

  scenario "send a follow via memory" do
  end
  
  scenario "unfollow a user via memory" do
    visit '/'
    within(".mem-all-div"){ click_link "Unfollow"}
    page.should have_content("no longer following")
  end

  scenario "approve a follower" do
    visit '/'
    click_link "Followers"
    click_link "Approve"
    page.should have_content("Followers approved")
  end

=begin
  scenario "deny a follower" do

  end
=end
end