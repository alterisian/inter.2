require 'rails_helper'

RSpec.describe "profiles/index", :type => :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user => nil,
        :height => 1.5,
        :age => "9.99",
        :gender => ""
      ),
      Profile.create!(
        :user => nil,
        :height => 1.5,
        :age => "9.99",
        :gender => ""
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
