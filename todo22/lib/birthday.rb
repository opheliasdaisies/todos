class Dates
  attr_reader :birthday
  attr_accessor :today

  def initialize(month, date)
    @birthday = "#{month.to_s}/#{date.to_s}"
  end

  def is_today?
    today == birthday ? true : false
  end

  def today_is
    @today = Time.new.strftime("%m/%d")
  end

end