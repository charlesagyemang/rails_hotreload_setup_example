require 'rails_helper'

RSpec.describe "poems/new", type: :view do
  before(:each) do
    assign(:poem, Poem.new(
      :title => "MyString",
      :body => "MyString"
    ))
  end

  it "renders new poem form" do
    render

    assert_select "form[action=?][method=?]", poems_path, "post" do

      assert_select "input[name=?]", "poem[title]"

      assert_select "input[name=?]", "poem[body]"
    end
  end
end
