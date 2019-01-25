def clock_angle(time)

  h = time.split(":")[0].to_i
  m = time.split(":")[1].to_i

  hpos = (h * 30) + (m * 0.5)
  mpos = m * 6

  angle = (hpos - mpos).abs

  if angle > 180
    angle = 360 - angle
  end

  angle

end
