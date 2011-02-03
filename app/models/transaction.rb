class Transaction < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :amount, :name, :frequency, :start_date
  
  def display_frequency
    case frequency
    when 'once_per_week' then 'Weekly'
    when 'once_per_day' then 'Daily'
    end
  end

  def to_hash
    money_stream = {}
    date = start_date
    begin
      money_stream[date] = amount
      date = case frequency
      when 'once_per_week' then date + 1.week
      when 'once_per_day' then date + 1.day
      end
    end while date <= 1.year.from_now.to_date
    money_stream
  end
end