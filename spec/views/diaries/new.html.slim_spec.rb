require 'rails_helper'

RSpec.describe "diaries/new", type: :view do
  before(:each) do
    assign(:diary, Diary.new(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new diary form" do
    render

    assert_select "form[action=?][method=?]", diaries_path, "post" do

      assert_select "input[name=?]", "diary[title]"

      assert_select "textarea[name=?]", "diary[content]"
    end
  end
end
