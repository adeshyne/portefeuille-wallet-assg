class UsersController < ApplicationController
	def current_user
		if session[:user_id]
			@current_user = User.find(session[:user_id])
		end 

		def new
			@user = User.new
		end
	end
		def create 
			@user = User.new(params[:user])
			if @user.save
				puts ">>>>>>>>>>>>>>>>>>>>User Saved"
				session[:user_id] = User.id
				flash[:notice] = "you have signed up successfully"
				redirect_to "/login"
			else
				flash[:notice]= "Could not create user."
				redirect_to "/users/new"
			end


		end


		def show
			if  current_user
				redirect_to "/login"
			else
				@user = User.find(session[:user_id])
			end
		end
			def login
			end

			def index
				@user = User.all 
			end
		end

			def loginValidate
				query =User.all.where(email: params[:email], password: params[:password])
				if query
					session[:user_id] = query.id
					rediect_ to "users/show"
				else
					flash[:alert] = "cant login you in"
					rdiect_to "/login"
				end
			end
		

