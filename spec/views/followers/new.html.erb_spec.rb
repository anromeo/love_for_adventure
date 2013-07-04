require 'spec_helper'

describe "followers/new" do
  before(:each) do
    assign(:follower, stub_model(Follower,
      :follower => 1,
      :following => 1,
      :approve => 1
    ).as_new_record)
  end

  it "renders new follower form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", followers_path, "post" do
      assert_select "input#follower_follower[name=?]", "follower[follower]"
      assert_select "input#follower_following[name=?]", "follower[following]"
      assert_select "input#follower_approve[name=?]", "follower[approve]"
    end
  end
end
