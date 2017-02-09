module TopTrackHelper
  def msMinute(milliseconds)
    seconds = (milliseconds / 1000).floor
    days = (seconds / 86400).floor
    hours = ((seconds % 86400) / 3600).floor
    minutes = (((seconds % 86400) % 3600) / 60).floor
    string = ''

    if days > 0
      string += (days > 1) ? (days.to_s + ' days ') : (days.to_s + ' day ')
    end
    if hours > 0
      string += (hours > 1) ? (hours.to_s + ' hours ') : (hours.to_s + ' hour ')
    end
    if minutes >= 0
      string += (minutes > 1) ? (minutes.to_s + ' minutes ') : (minutes.to_s + ' minute ')
    end

    string


  end
end
