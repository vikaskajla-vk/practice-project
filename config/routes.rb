Rails.application.routes.draw do
	  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	root 'user#index'

	get '/crons' => 'cron#index'
	get '/subscribers' => 'subscribers#index'
	get '/cron_runs' => 'cron_runs#index'
	get '/tenants' => 'tenants#index'


end
