require 'rails_helper'

describe Event do
  it { should validate_presence_of(:entry) }

  it "should validate the presence of an event entry" do
    event = Event.new(entry: "Text event entry")
    expect(event).to be_valid
  end

  it "should be invalid if the event entry is empty" do
    event = Event.new(entry: "")
    expect(event).to be_invalid
  end
end
