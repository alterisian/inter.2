require 'rails_helper'

RSpec.describe "profiles/show", :type => :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :height => 1.5,
      :age => "9.99",
      :gender => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
