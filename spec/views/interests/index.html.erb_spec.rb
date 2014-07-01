require 'rails_helper'

RSpec.describe "interests/index", :type => :view do
  before(:each) do
    assign(:interests, [
      Interest.create!(
        :value => "Value"
      ),
      Interest.create!(
        :value => "Value"
      )
    ])
  end

  it "renders a list of interests" do
    render
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
