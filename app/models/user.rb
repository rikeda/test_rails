# encoding: utf-8

class User < ActiveRecord::Base
  attr_accessible :name
  
  # バリデーション
  # nameが空でないか検証
  #validates_presence_of :name
  # nameが2文字以上30文字以下であることを検証
  # validates_length_of :name, :in => (2..30),
  #     :too_short => "nameは2文字以上で入力してください。",
  #     :too_long  => "nameは30文字以下で入力してください。"
  #validates :name, :presence => true, :length => 2..30
  
  validates :name, :presence => true
  has_many :events
  
end
