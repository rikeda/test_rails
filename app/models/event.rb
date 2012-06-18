# coding: utf-8

class Event < ActiveRecord::Base
  #has_event_calendar
  
  attr_accessible :user_id, :start_at, :end_at, :state
  
  belongs_to  :user

  # def before_save # before_saveメソッドはActiveRecordの機能で、保存前に自動的に呼び出されるコールバックメソッドである。
  #   self.start_at ||= Date.today
  # end
  
  # def before_save
  #   self.state = true
  # end


end
