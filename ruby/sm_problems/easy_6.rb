# Problem 1

def dms(num)
  deg, min_sec = num.divmod(1)
  min, sec = min_sec.divmod(0.60)
  sec = (sec * 100).round(0)
  format(%(%d\xC2\xB0%02d'%02d\"), deg, min, sec)
end

puts dms(30)
puts dms(30) == %(30°00'00")
puts dms(76.73)
puts dms(76.73) == %(76°43'48")
puts dms(254.6)
puts dms(254.6) == %(254°36'00")
puts dms(93.034773)
puts dms(93.034773) == %(93°02'05")
puts dms(0)
puts dms(0) == %(0°00'00")
puts dms(360)
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")