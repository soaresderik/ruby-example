require 'sinatra'
require_relative './controller/mesas'
require_relative './helpers/validation'

get '/' do
    mesas = MesaController.new
    mesas.get_all_mesas
end

post '/mesa/create' do
    request.body.to_s
    validation = Validation.new
    validation.mesa_create(request.body)
end

post '/mesa/:id' do
    mesas = MesaController.new
    mesas = mesas.get_mesa(params[:id])
end
    
    
set :port, 3000