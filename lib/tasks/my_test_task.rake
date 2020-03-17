namespace :my_test_task do

	

	task :test_task_one => :environment do
		
		Rails.logger.info "<-----======--- TASK 1 STARTED AT #{Time.now} ------=======--->"
		puts "<-----======--- TASK 1 STARTED AT #{Time.now} ------=======--->"
		
    	# id = 1
    	# t = Tenant.find(id)
    	# Rails.logger.info "==== ONE NAME: #{t.name} ======"
    	# puts "==== ONE NAME: #{t.name} ======"
    	result = cron_logger(32)
    	
    	Rails.logger.info "==== ONE NAME: #{result[:et]} and status #{result[:status]} ======"


    	# while id < 12
    	# 	# begin
    	# 	# 	t = Tenant.find(id)
    	# 	# 	Rails.logger.info "==== ONE NAME: #{t.name} ======"
    	# 	# rescue
    	# 	# 	Rails.logger.info "=======ERROR OCCURED========"
    	# 	# end
    	# 	t = Tenant.find(id)
    	# 	Rails.logger.info "==== ONE NAME: #{t.name} ======"
    	# 	id = id + 1
    	# end
		Rails.logger.info "<-----======--- TASK 1 ENDED AT #{Time.now} ------=======--->"
		puts "<-----======--- TASK 1 ENDED AT #{Time.now} ------=======--->"
	end

	task :test_task_two => :environment do


		Rails.logger.info "inside task 2"
		t = Tenant.find(62)
		Rails.logger.info "task 2 ended"
		
		# Rails.logger.info "<-----======--- TASK 2 STARTED AT #{Time.now} ------=======--->"
		
		# # t = Tenant.find(12)
  # #   	Rails.logger.info "==== ONE NAME: #{t.name} ======"

  # 		begin
  # 			t = Tenant.find(2)
  #   		Rails.logger.info "==== ONE NAME: #{t.name} ======"
  #   	rescue Exception
  #   		Rails.logger.info "=======ERROR OCCURED======== #{Exception}"
  #   	end


  #   	# id = 1
  #   	# while id < 12
  #   	# 	begin
  #   	# 		t = Tenant.find(id)
  #   	# 		Rails.logger.info "==== TWO NAME: #{t.name} ======"
  #   	# 	rescue
  #   	# 		Rails.logger.info "=======ERROR OCCURED========"
  #   	# 	end
  #   	# 	id = id + 2
  #   	# end
		# Rails.logger.info "<-----======--- TASK 2 ENDED AT #{Time.now} ------=======--->"
	end

	def test_function(args)
		t = Tenant.find(args).name
		x = Cron.where(id: 43)
		y = CronRun.where(cron_id: 1545)
		# t = Cron.find(123)
		tw = Tenant.find(4)
		return "completed"
	end

	def cron_logger(args)
	    start_time = Time.zone.now
	    status = "success!!!!!!!!!!!"
	    begin
	    	Rake::Task["my_test_task:test_task_two"].invoke
	    rescue
	    	status = "failed!!!!!!!!!!!!!!!!!!"
	    end
	    end_time = Time.zone.now
	    et = (end_time - start_time).round(2)
	    result = {}
	    result[:et] = et
	    result[:status] = status
	    return result
	  end

end
