def clock_angle(time)
  time_array = time.split(":")
  hour = time_array[0].to_f
  if hour >= 12
    hour = hour - 12
  end
  minute = time_array[1].to_f
  minute_angle = minute*6
  hour_angle = hour*30 + minute*0.5
  angle = minute_angle - hour_angle
  angle = angle.abs
  if angle > 180
    angle = angle - 180
  end
  angle
end
