require 'rails_helper'

RSpec.describe "profiles/new", :type => :view do
  before(:each) do
    assign(:profile, Profile.new(
      :user => nil,
      :height => 1.5,
      :age => "9.99",
      :gender => ""
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_height[name=?]", "profile[height]"

      assert_select "input#profile_age[name=?]", "profile[age]"

      assert_select "input#profile_gender[name=?]", "profile[gender]"
    end
  end
end
