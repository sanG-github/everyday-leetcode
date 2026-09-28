class MyCalendar
  def initialize
    @bookings = []
  end

  def book(start_time, end_time)
    @bookings.each do |start_booked, end_booked|
      if start_time < end_booked && end_time > start_booked
        return false
      end
    end

    @bookings << [start_time, end_time]
    true
  end
end