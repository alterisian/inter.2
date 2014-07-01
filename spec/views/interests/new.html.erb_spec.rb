require 'rails_helper'

RSpec.describe "interests/new", :type => :view do
  before(:each) do
    assign(:interest, Interest.new(
      :value => "MyString"
    ))
  end

  it "renders new interest form" do
    render

    assert_select "form[action=?][method=?]", interests_path, "post" do

      assert_select "input#interest_value[name=?]", "interest[value]"
    end
  end
end
