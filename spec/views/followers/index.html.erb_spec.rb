require 'spec_helper'

describe "followers/index" do
  before(:each) do
    assign(:followers, [
      stub_model(Follower,
        :follower => 1,
        :following => 2,
        :approve => 3
      ),
      stub_model(Follower,
        :follower => 1,
        :following => 2,
        :approve => 3
      )
    ])
  end

  it "renders a list of followers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
