require 'spec_helper'

describe "mems/edit" do
  before(:each) do
    @mem = assign(:mem, stub_model(Mem,
      :title => "MyString",
      :memory => "MyText"
    ))
  end

  it "renders the edit mem form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mem_path(@mem), "post" do
      assert_select "input#mem_title[name=?]", "mem[title]"
      assert_select "textarea#mem_memory[name=?]", "mem[memory]"
    end
  end
end
