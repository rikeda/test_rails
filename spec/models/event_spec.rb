# coding: utf-8

require 'spec_helper'

describe Event do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  fixtures  :events, :users
  
  before(:each) do
    @event = events(:kakutani_earliest)
  end
  
  it "は特定のイベントに属すること" do
    @event.user.should == users(:kakutani)
  end
end


# describe Event, "#start_at が入力されずに保存された場合:" do
#   fixtures  :users
#   
#   before do
#     @event = Event.new(:user => users(:kakutani),
#       :end_at => Date.today, :state => false)
#     @event.save!
#     @event.reload
#   end
# 
#   it "Event の開始日付は作成日であること" do
#     @event.start_at.should == Date.today
#   end
#   
# end

# describe Event, "#state が入力されずに保存された場合:" do
#   fixtures  :users
#   
#   before do
#     @event = Event.new(:user => users(:kakutani),
#       :start_at => 2012-06-14, :end_at => 2012-06-14
#       )
#     @event.save!
#     @event.reload
#   end
# 
#   it "Event のstateはfalseであること" do
#     @event.state.should == true
#   end
#   
# end

# describe Entry, "#start_at を明示して保存された場合:" do
#   fixtures :users
#   
#   before do
#     @start_at = Date.today - 10
#     @event = Event.new(:user => users(:kakutani), :end_at => @start_at, :state => false)
#     @event.save!
#     @event.reload
#   end
#   
#   it "入力された日付が投稿日であること" do
#     @event.start_at.should == @start_at
#   end
#   
# end