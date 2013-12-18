require "bundler"
Bundler.require

module IsItToday
  class Birthday < Sinatra::Application

    get "/" do
      "hi"
    end

  end
end