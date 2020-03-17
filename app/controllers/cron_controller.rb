class CronController < ApplicationController
	def index
		@crons = Cron.all.limit(15)
		render 'cron'
	end
end
