# coding: utf-8   # <- これを表記しないと、日本語での出力できずエラーとなるので、注意せよ

# spec_helperファイルを読み込んでいる。
require 'spec_helper'

# describe User, "when empty" do # Behavior # Userクラスがemptyのときの振舞
#   #pending "add some examples to (or delete) #{__FILE__}"
# 
#   before do
#     @empty_user = []
#   end
#   
#   it "should be user" do # Example
#     @empty_user.should be_empty # Expectation
#     # be_XXX    : RSpecが実行時に「XXX」の部分を「XXX?」という問い合わせメソッドだと解釈して実行する。
#     # be_empty  : @empty_user.empty? がtrueになることを期待している。
#     # be_nil    : 「nil?」
#     # be_instance_of  : 「instance_of?」
#     # 「be_XXX」「be_a_XXX」「be_an_XXX」はいずれも同じもの。
#     
#   end
#   
#   it "should size 0" do # Example
#     @empty_user.size.should == 0 # Expectation
#     # 
#   end
#   
#   after do
#     @empty_user = nil
#   end
# end
# ----------------------------------

describe User, "#name が設定されていない場合:" do
  
  before(:each) do
    @user = User.new
  end
  
  it "バリデーションに失敗すること" do
    @user.should_not be_valid
  end
  
  it ":nameにエラーが設定されていること" do
    @user.should have(1).errors_on(:name)
    # @user.errors_on(:name)の要素数が1であること、
    # すなわち@userのname属性に1つだけエラーがあることを期待している。
  end
  
end

describe User do
  
  fixtures :users, :events
  
  before do
    @user = users(:kakutani)
  end
  
  it "は複数のイベントを所有できること" do
    @user.should have_at_least(2).events
  end

end

describe User, "がイベントを登録できた場合:" do
  fixtures :users, :events
  
  before do
    @user = users(:kakutani)
  end
  
  it "イベントの件数が1件増えること" do
    lambda {
      @user.events.create(
        :start_at => 2012-06-13,
        :end_at => 2012-06-13,
        :state => false,
        # :created_at => Date.today,
        # :updated_at => Date.today
      )
    }.should change(Event, :count).by(1)
    # Userが新しいEventを追加する(@user.events.create)処理(lambdaブロック)の結果、
    # Eventの件数(Event.count)が1増える(.by(1))こと。
  end
end
