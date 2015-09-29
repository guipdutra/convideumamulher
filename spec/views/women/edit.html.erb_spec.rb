require 'rails_helper'

RSpec.describe "women/edit", :type => :view do
  before(:each) do
    @woman = assign(:woman, Woman.create!(
      :name => "MyString",
      :area => "MyString",
      :current_position => "MyString",
      :linkedin => "MyString"
    ))
  end

  it "renders the edit woman form" do
    render

    assert_select "form[action=?][method=?]", woman_path(@woman), "post" do

      assert_select "input#woman_name[name=?]", "woman[name]"

      assert_select "input#woman_area[name=?]", "woman[area]"

      assert_select "input#woman_current_position[name=?]", "woman[current_position]"

      assert_select "input#woman_linkedin[name=?]", "woman[linkedin]"
    end
  end
end
