require 'rails_helper'

RSpec.describe "profiles/edit", :type => :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :height => 1.5,
      :age => "9.99",
      :gender => ""
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_height[name=?]", "profile[height]"

      assert_select "input#profile_age[name=?]", "profile[age]"

      assert_select "input#profile_gender[name=?]", "profile[gender]"
    end
  end
end
