module SubForumsHelper

  def date_parse(dateobject) 
    "#{dateobject.month}/#{dateobject.day}/#{dateobject.year},#{time_parse(dateobject)}" 
  end

  def time_parse(date_object)
    hour = date_object.hour 
    minute = date_object.min
    str = (hour > 12)? " AM" : " PM"
    "#{hour % 12}:#{minute}" + str
  end

end
