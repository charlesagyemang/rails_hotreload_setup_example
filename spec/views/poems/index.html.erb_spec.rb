require 'rails_helper'

RSpec.describe "poems/index", type: :view do
  before(:each) do
    assign(:poems, [
      Poem.create!(
        :title => "Title",
        :body => "Body"
      ),
      Poem.create!(
        :title => "Title",
        :body => "Body"
      )
    ])
  end

  it "renders a list of poems" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
