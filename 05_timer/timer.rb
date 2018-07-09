#write your code here

def time_string(time_in_seconds)
  hours = time_in_seconds / (60 * 60)
  minutes = (time_in_seconds / 60) %60
  seconds = time_in_seconds %60
  format("%02d:%02d:%02d", hours, minutes, seconds)
end
