module ReservationsHelper
def formatted_time(time)
    Date.strftime("%B %d, %Y at %l:%M %p")
  end

 def set_dates
 	@reservation.reserved_on = Date.today
	@reservation.due_date= @reservation.reserved_on + 7.days
end
end
