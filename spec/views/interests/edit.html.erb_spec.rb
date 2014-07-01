require 'rails_helper'

RSpec.describe "interests/edit", :type => :view do
  before(:each) do
    @interest = assign(:interest, Interest.create!(
      :value => "MyString"
    ))
  end

  it "renders the edit interest form" do
    render

    assert_select "form[action=?][method=?]", interest_path(@interest), "post" do

      assert_select "input#interest_value[name=?]", "interest[value]"
    end
  end
end
