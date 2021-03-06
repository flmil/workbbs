require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'open-uri'
require 'sinatra/json'
require './models/contribution'
require  'kaminari/sinatra'
register Kaminari::Helpers::SinatraHelpers


helpers do
	def contribution_data
		{name: params[:name],
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
	 tel: params[:tel]}
	end
end

get '/' do
	@contents = Contribution.page(params[:page]).per(10)
	erb :index

end

post '/new' do
	Contribution.create(contribution_data)

	redirect '/'
end

get '/details/:content_id' do
	@content = Contribution.find_by(id: params[:content_id])
	erb :details
end


# post '/renew/:id' do
# 	@content = Contribution.find(params[:id])
# 	@content.update(contribution_data)
#	  redirect '/'
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
