namespace :my_test_task do
	desc 'useless_cron'
	task :useless_cron, :environment do
		Rails.logger.info "<<<||||||||=====USELESS CRON RUNNING AT #{Time.now}|||||||>>>"
		puts "<<<||||||||=====USELESS CRON RUNNING AT #{Time.now}|||||||>>>"
	end
end





# namespace :my_test_task do

	# desc 'useless_cron'
	# task :useless_cron, :environment do
	# 	Rails.logger.info "<<<||||||||=====USELESS CRON RUNNING AT #{Time.zone.now}|||||||>>>"
	# end

# 	def test_function(args)
# 		t = Tenant.find(args).name
# 		x = Cron.where(id: 43)
# 		y = CronRun.where(cron_id: 1545)
# 		# t = Cron.find(123)
# 		tw = Tenant.find(4)
# 		return "completed"
# 	end

# 	def cron_logger(args)
# 	    start_time = Time.zone.now
# 	    status = "success!!!!!!!!!!!"
# 	    begin
# 	    	Rake::Task["my_test_task:test_task_two"].invoke
# 	    rescue
# 	    	status = "failed!!!!!!!!!!!!!!!!!!"
# 	    end
# 	    end_time = Time.zone.now
# 	    et = (end_time - start_time).round(2)
# 	    result = {}
# 	    result[:et] = et
# 	    result[:status] = status
# 	    return result
# 	  end

# end


# def cron_logger(args) hkjh 
# 	# args contain cron name and other details
# 	# should we send status as integer or string?
# 		status = "initiated"
# 	args[:start_time] = Time.zone.now
# 	# can modify UUID generation if needed, though
# 	# SecureRandom seems good as it uses current timestamp
# 	# while generating uuid
# 		args[:uuid] = SecureRandom.uuid
# 	ping_cron_status(args, status)
# 	# start the cron task
# 	status = "success"
# 	begin
# 		Rake::Task["cron_tasks:#{args[:name]}"].invoke
# 	rescue Exception => e
# 		status = "failed"
# 		# what to do with failed information?
# 		Rails.logger.info e.message
# 	end
# 	args[:end_time] = Time.zone.now
# 	# need more clarity on the et below (new cron vs existing cron)
# 	args[:et] = (args[:end_time] - args[:start_time]).round(2)
# 	# call api again with whatever the status is
# 	ping_cron_status(args, status)
# end

# def ping_cron_status(args, status)
# 	if status == "initiated"
# 		url = create_cron_run_api_endpoint
# 	else
# 		url = update_cron_run_api_endpoint
# 	end
# 	begin
# 		# call api with relevant url 
# 	rescue Exception => e
# 		# do something
# 	end
# end























