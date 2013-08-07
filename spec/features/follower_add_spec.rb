require 'spec_helper'

feature "add followers" do
  let!(:user){ Factory(:user) }
  let!(:user2){ Factory(:user) }
  let!(:mem){ Factory(:mem, user_id: user2.id ) }


  scenario "send a follow via memory" do
      sign_in_as!(user)
      within(".mem"){ click_link "follow" }
      page.should have_content("following")
  end
  
=begin
  scenario "approve a follower" do

  end

  scenario "deny a follower" do

  end
=end
end