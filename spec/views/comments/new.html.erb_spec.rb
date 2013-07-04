require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :user_id => 1,
      :comment => "MyString",
      :cthing_type => "MyString",
      :cthing_id => 1
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comments_path, "post" do
      assert_select "input#comment_user_id[name=?]", "comment[user_id]"
      assert_select "input#comment_comment[name=?]", "comment[comment]"
      assert_select "input#comment_cthing_type[name=?]", "comment[cthing_type]"
      assert_select "input#comment_cthing_id[name=?]", "comment[cthing_id]"
    end
  end
end
