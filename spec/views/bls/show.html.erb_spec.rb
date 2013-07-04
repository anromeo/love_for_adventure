require 'spec_helper'

describe "bls/show" do
  before(:each) do
    @bl = assign(:bl, stub_model(Bl,
      :user_id => 1,
      :item => "Item",
      :rank => 2,
      :mem_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Item/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
