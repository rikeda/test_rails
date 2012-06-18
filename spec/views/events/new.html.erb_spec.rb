require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :user_id => 1,
      :state => false
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_user_id", :name => "event[user_id]"
      assert_select "input#event_state", :name => "event[state]"
    end
  end
end
