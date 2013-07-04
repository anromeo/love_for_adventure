require 'spec_helper'

describe "bls/index" do
  before(:each) do
    assign(:bls, [
      stub_model(Bl,
        :user_id => 1,
        :item => "Item",
        :rank => 2,
        :mem_id => 3
      ),
      stub_model(Bl,
        :user_id => 1,
        :item => "Item",
        :rank => 2,
        :mem_id => 3
      )
    ])
  end

  it "renders a list of bls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
