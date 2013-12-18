require "bundler"
Bundler.require
require_relative "./lib/birthday"

module IsItToday
  class Birthday < Sinatra::Application

    get "/" do
      @dates = Dates.new(10, 30)
      @today = @dates.is_today?
      if @today == true
        erb :yes
      else
        erb :no
      end
    end

  end
end