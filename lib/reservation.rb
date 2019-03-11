require "date"

module Hotel
  class Reservation
    attr_accessor :start_date, :end_date

    def initialize(start_date, end_date)
      @start_date = start_date
      @end_date = end_date

      if start_date >= end_date
        raise ArgumentError, "end date must be after start date. Start date: #{start_date}, end date: #{end_date}"
      end
    end
  end
end
