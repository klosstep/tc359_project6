# app.rb
require 'sinatra'
require 'holidapi'


class MyWebApp < Sinatra::Base
  get '/' do
    params['country'] ||= "US"
    params['year'] ||= 2015
    params['month'] ||= 2
 
    @holidays_input = HolidApi.get(country: params['country'], year: params['year'], month: params['month'])

    puts params

    erb :index
  end
end