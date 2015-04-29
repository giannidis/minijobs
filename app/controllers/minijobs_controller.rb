class MinijobsController < ApplicationController
		before_action :find_minijob, only: [:show, :edit, :update, :destroy]
	def index
			@minijobs = Minijob.all.order("created_at DESC")
			if params[:tag].present? 
	      @minijob = Minijob.tagged_with(params[:tag])
	  	else
		    @minijob = Minijob.all.order("created_at DESC")
		    respond_to do |format|
			    format.html  #index.html.erb
			    format.json { render json: @minijobs }
	    	end 
	  	end  
	end

	def show  	
	end

	def new
		@minijob = Minijob.new
	end

	def create
		@minijob = Minijob.new(minijobs_params)

		if @minijob.save
			redirect_to @minijob
		else
			render "New"
		end
	end

	def edit  	
	end

	def update
		if @minijob.update(minijobs_params)
			redirect_to @minijob
		else
			render "Edit"
		end
	end

	def destroy
		@minijob.destroy
		redirect_to root_path
	end

	private

	def minijobs_params
		params.require(:minijob).permit(:title, :description, :timi, :category_id, :tag_list)
	end

	def find_minijob
		@minijob = Minijob.find(params[:id])
	end


end
