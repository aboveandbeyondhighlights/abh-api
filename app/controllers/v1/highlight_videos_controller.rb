class V1::HighlightVideosController < ApplicationController
  def index
    @highlight_videos = HighlightVideo.all

    render json: @highlight_videos, status: :ok
  end

  def create
    @highlight_video = HighlightVideo.new(highlight_video_params)

    @highlight_video.save
    render json: @highlight_video, status: :created
  end

  def destroy
    @highlight_video = HighlightVideo.find_by(id: params[:id])

    if @highlight_video.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def highlight_video_params
    params.require(:highlight_video).permit(:title, :url)
  end
end
