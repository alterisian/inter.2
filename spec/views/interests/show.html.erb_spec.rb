require 'rails_helper'

RSpec.describe "interests/show", :type => :view do
  before(:each) do
    @interest = assign(:interest, Interest.create!(
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Value/)
  end
end
