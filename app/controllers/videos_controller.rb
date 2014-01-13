class VideosController < ApplicationController

  def index
  	@country_params = params[:search_cuntry]
  	@video_params = params[:search_video]
		if params[:search_country].length > 0 || params[:search_video].length
			@videos = Video.search(params[:search_country], params[:search_video]).order("created_at DESC")
		else
			@videos = Video.all.order("created_at DESC")
		end
	end

  def show
  	@video = Video.find(params[:id])
  end
end
