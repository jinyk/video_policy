class VideosController < ApplicationController
  def create
  end

  def index
  	@videos = Video.all
  end

  def show
  	@video = Video.find(params[:id])
  end
end
