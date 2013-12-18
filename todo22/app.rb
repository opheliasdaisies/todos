require "bundler"
Bundler.require
require_relative "./lib/birthday"

module IsItToday
  class Birthday < Sinatra::Application

    get "/" do
      @dates = Dates.new(10, 30)
      @today = @dates.is_today?
      @today == true ? erb :yes : erb :no
    end

  end
end