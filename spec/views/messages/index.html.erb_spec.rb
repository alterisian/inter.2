require 'rails_helper'

RSpec.describe "messages/index", :type => :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :message => "MyText",
        :read => false,
        :previous_message_id => 1,
        :next_message_id => 2,
        :user => nil,
        :from_user_id => 3
      ),
      Message.create!(
        :message => "MyText",
        :read => false,
        :previous_message_id => 1,
        :next_message_id => 2,
        :user => nil,
        :from_user_id => 3
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
