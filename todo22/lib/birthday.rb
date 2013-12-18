class Birthday
  attr_reader :birthday, :today

  def initialize(month, date)
    @birthday = "#{month}/#{date}"
  end

  def is_today?
    today == birthday ? true : false
  end

  def today_is
    @today = Time.new.strftime("%m/%d")
  end

end