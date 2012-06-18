# encoding:utf-8

module CalendarHelper
  def month_link(month_date)
    link_to(I18n.localize(month_date, :format => "%B"), {:month => month_date.month, :year => month_date.year})
  end
  
  # custom options for this calendar
  def event_calendar_opts
    { 
      :year => @year,
      :month => @month,
      :event_strips => @event_strips,
      :month_name_text => I18n.localize(@shown_month, :format => "%B %Y"),
      :previous_month_text => "<< " + month_link(@shown_month.prev_month),
      :next_month_text => month_link(@shown_month.next_month) + " >>" #,
      #:show_today => @show_today
      #:show_header => @show_header


    }
  end

  def event_calendar(time)
    # args is an argument hash containing :event, :day, and :options
    calendar event_calendar_opts do |args|
    
      event = args[:event]
      
      #html = %(<a href="/events/#{event.id}" title="#{h(event.user.name)}">#{h(event.user.name)})

      if event.start_at < time
        if event.state == true
          #html << %( : <font size=3>◯</font></a>)
          html = %(<a href="/events/#{event.id}" title="#{h(event.user.name)}, ◯">#{h(event.user.name)} : ◯</a>)
        elsif event.state == false
          #html << %( : <font size=3>×</font></a>)
          html = %(<a href="/events/#{event.id}" title="#{h(event.user.name)}, ×">#{h(event.user.name)} : ×</a>)
        else
          #html << %( : error</a>)
          html = %(<a href="/events/#{event.id}" title="#{h(event.user.name)}, error">#{h(event.user.name)} : error</a>)
        end
      else
        #html << %( : -</a>)
        html = %(<a href="/events/#{event.id}" title="#{h(event.user.name)}, -">#{h(event.user.name)} : -</a>)
      end
            

      #%(<a href="/events/#{event.id}" title="#{h(event.user.name)}, #{event.state}">#{h(event.user.name)} : #{h(event.state)}</a>)
      
      #html = %(<scrit type="text/javascript">)
      #concat capture(Time.now)
       
      
      #event, day = args[:event], args[:day], args[:options]
      #html = %(<a href="/events/#{event.id}" title="#{h(event.user_id)}">)
      #html << display_event_time(event, day)
      #html << %(, #{h(event.user_id)}</a>)
      #html

    end
  end

    
  
  def link_to_unless_current_action(label, url_option={})
    # リンク先が現在のアクションかどうかを確認し、フラグを立てる
    target_is_current_page=(
      (url_option[:controller]=="users") &&
      (url_option[:action]=="index"))
      # link_to_unlessメソッドを使い、上での確認結果に基づきリンクを生成する
    link_to_unless(target_is_current_page, label, url_option)
  end
end
