require 'spec_helper'

describe "bls/new" do
  before(:each) do
    assign(:bl, stub_model(Bl,
      :user_id => 1,
      :item => "MyString",
      :rank => 1,
      :mem_id => 1
    ).as_new_record)
  end

  it "renders new bl form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bls_path, "post" do
      assert_select "input#bl_user_id[name=?]", "bl[user_id]"
      assert_select "input#bl_item[name=?]", "bl[item]"
      assert_select "input#bl_rank[name=?]", "bl[rank]"
      assert_select "input#bl_mem_id[name=?]", "bl[mem_id]"
    end
  end
end
