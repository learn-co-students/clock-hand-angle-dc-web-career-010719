def clock_angle(time)
    # code your solution here
    time_array = time.split(":")
    hour = time_array[0].to_i
    minute = time_array[1].to_i
    minute_hand_position = minute
    hour_hand_position = (hour.to_f*5) + (minute.to_f/12)
    if minute_hand_position == hour_hand_position
      angle = 0
    elsif minute_hand_position > hour_hand_position
      if (minute_hand_postion - hour_hand_position)*6 > 180
        angle = 360 - ((minute_hand_postion - hour_hand_position)*6)
      else
        angle = (minute_hand_postion - hour_hand_position)*6
      end
    else
      if (hour_hand_position - minute_hand_position)*6 > 180
        angle = 360 - (hour_hand_position - minute_hand_position)*6
      else
        angle = (hour_hand_position - minute_hand_position)*6
      end
    end
    angle
end
