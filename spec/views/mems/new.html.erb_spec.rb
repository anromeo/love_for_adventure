require 'spec_helper'

describe "mems/new" do
  before(:each) do
    assign(:mem, stub_model(Mem,
      :title => "MyString",
      :memory => "MyText"
    ).as_new_record)
  end

  it "renders new mem form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mems_path, "post" do
      assert_select "input#mem_title[name=?]", "mem[title]"
      assert_select "textarea#mem_memory[name=?]", "mem[memory]"
    end
  end
end
