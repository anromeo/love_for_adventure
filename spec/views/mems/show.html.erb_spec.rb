require 'spec_helper'

describe "mems/show" do
  before(:each) do
    @mem = assign(:mem, stub_model(Mem,
      :title => "Title",
      :memory => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
