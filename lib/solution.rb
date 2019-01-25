
def clock_angle(time)
    # code your solution here
    minute = time.split(':')[1].to_i * 6
    hour = time.split(':')[0].to_i * 30

    a = (hour - minute).abs
    if a > 180
      360 - a
    else
      a
    end

end

puts clock_angle('12:58')


#could add potential rewards you 'could' get for customer view rewards
