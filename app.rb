require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'open-uri'
require 'sinatra/json'
require './models/contribution'

get '/' do
	@contents = Contribution.all
	erb :index
end

post '/new' do
	Contribution.create({
		name: params[:name],
		address: params[:address],
		traffic: params[:traffic],
		money: params[:money],
		shift: params[:shift],
		explanation: params[:explanation],
		feature: params[:feature],
		condition: params[:condition],
		period: params[:period],
		count: params[:count],
		fare: params[:fare],
		treatment: params[:treatment],
		ratio: params[:ratio],
		age: params[:age],
		representations: params[:representations],
		atmosphere: params[:atmosphere],
		message: params[:message],
		manner: params[:manner],
		flow: params[:flow],
		tel: params[:tel]
	})

	redirect '/'
end

get '/details/:content_id' do
	@content = Contribution.all
#	@content = content.find_by(id: content_id)
#	Contribution.find(paramus[:id])
	erb :details
end


#post '/renew/:id' do
#	@content = Contribution.find(params[:id])
#	@content.update({
#		name: params[:name],
#		address: params[:address],
#		traffic: params[:traffic],
#		money: params[:money],
#		shift: params[:shift],
#		explanation: params[:explanation],
#		feature: params[:feature],
#		condition: params[:condition],
#		period: params[:period],
#		count: params[:count],
#		fare: params[:fare],
#		treatment: params[:treatment],
#		ratio: params[:ratio],
#		age: params[:age],
#		attribute: params[:attribute],
#		atmosphere: params[:atmosphere],
#		message: params[:message],
#		manner: params[:manner],
#		flow: params[:flow],
#		tel: params[:tel],
#	})

#	redirect '/'
#end


#get '/'do
#	@names = name.all
#end

#get '/show/:name_id' do
#	@name = name.find_by(id: name_id)
#end

#get '/' do
#	@names = name.all
#end

#get '/show/:name_id' do
#	@name = name.find_by(id: name_id)
#end
