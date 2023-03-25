module OrganizationTimelineEntriesHelper
    def format_duration(time)
        time = time.to_i
        if time.negative?
          neg = '&minus;'.html_safe
          time *= -1
        else
          neg = ''
        end
        hours = time / 3600
        minutes = (time % 3600) / 60
        "#{neg}#{'%d' % hours}:#{'%02d' % minutes}"
    end

    def date_and_time(display_date_and_time)
        #[date(display_date_and_time), time(display_date_and_time)].compact.join(' ')
        display_date_and_time
    end
end 
