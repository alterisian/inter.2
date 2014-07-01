require 'rails_helper'

RSpec.describe "messages/new", :type => :view do
  before(:each) do
    assign(:message, Message.new(
      :message => "MyText",
      :read => false,
      :previous_message_id => 1,
      :next_message_id => 1,
      :user => nil,
      :from_user_id => 1
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "textarea#message_message[name=?]", "message[message]"

      assert_select "input#message_read[name=?]", "message[read]"

      assert_select "input#message_previous_message_id[name=?]", "message[previous_message_id]"

      assert_select "input#message_next_message_id[name=?]", "message[next_message_id]"

      assert_select "input#message_user_id[name=?]", "message[user_id]"

      assert_select "input#message_from_user_id[name=?]", "message[from_user_id]"
    end
  end
end
