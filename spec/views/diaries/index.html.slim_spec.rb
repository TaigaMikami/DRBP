require 'rails_helper'

RSpec.describe "diaries/index", type: :view do
  before(:each) do
    assign(:diaries, [
      Diary.create!(
        :title => "Title",
        :content => "MyText"
      ),
      Diary.create!(
        :title => "Title",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of diaries" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
