class AboutsController < ApplicationController
	
	 def poll_first

	@user_id = params[:id]
	@my_id = current_user.id

		 if @test = About.find_by(["my_id = ? and user_id = ?", @my_id, @user_id])
		 	@test.about_id = 1
		 	@test.save
			redirect_to root_path
	      		puts "update"
	      	 else
		 	poll = About.create(my_id: @my_id, user_id: @user_id, about_id: 1)
			redirect_to root_path
	       		 puts "create"
	     	 end

  	 end


	 def poll_second

	@user_id = params[:id]
	@my_id = current_user.id

		 if @test = About.find_by(["my_id = ? and user_id = ?", @my_id, @user_id])
		 	@test.about_id = 2
		 	@test.save
			redirect_to root_path
	      		puts "update"
	      	 else
		 	poll = About.create(my_id: @my_id, user_id: @user_id, about_id: 2)
			redirect_to root_path
	       		 puts "create"
	     	 end

  	 end

  	 def poll_third

	@user_id = params[:id]
	@my_id = current_user.id

		 if @test = About.find_by(["my_id = ? and user_id = ?", @my_id, @user_id])
		 	@test.about_id = 3
		 	@test.save
			redirect_to root_path
	      		puts "update"
	      	 else
		 	poll = About.create(my_id: @my_id, user_id: @user_id, about_id: 3)
			redirect_to root_path
	       		 puts "create"
	     	 end

  	 end

  	 def poll_four

	@user_id = params[:id]
	@my_id = current_user.id
	
		 if @test = About.find_by(["my_id = ? and user_id = ?", @my_id, @user_id])
		 	@test.about_id = 4
		 	@test.save
			redirect_to root_path
	      		puts "update"
	      	 else
		 	poll = About.create(my_id: @my_id, user_id: @user_id, about_id: 4)
			redirect_to root_path
	       		 puts "create"
	     	 end
	 
	 end
end
