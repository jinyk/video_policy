class VideosController < ApplicationController

  def index
  	@videos_list = Video.all
  	@country_params = params[:search_cuntry]
  	@video_params = params[:search_video]
		if params[:search_country].length > 0 || params[:search_video].length > 0
			@videos = Video.search(params[:search_country], params[:search_video]).order("title ASC").paginate(:page => params[:page], :per_page => 12)
		else
			@videos = Video.order("title ASC").paginate(:page => params[:page], :per_page => 12)
		end
	end

  def show
  end
end
