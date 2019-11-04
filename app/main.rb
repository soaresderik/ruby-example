require 'sinatra'
require_relative './controller/mesas'

get '/' do
    getAllTables
end

post '/mesa/:id' do
    getTable(params[:id])
end