require 'spec_helper'

describe "followers/show" do
  before(:each) do
    @follower = assign(:follower, stub_model(Follower,
      :follower => 1,
      :following => 2,
      :approve => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
