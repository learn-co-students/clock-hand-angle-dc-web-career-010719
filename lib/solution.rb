def clock_angle(time)
  hour = time.split(':')[0].to_i
  min = time.split(':')[1].to_i

  hour_angle = hour * 30 + (min * 0.5)
  min_angle = min * 6

  angle = (min_angle - hour_angle).abs
  
  if angle >= 180
    angle = 360 - angle
  end

  return angle
end
