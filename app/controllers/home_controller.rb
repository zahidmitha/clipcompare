class HomeController < ApplicationController
  def index
    @video_pair = Video.all.sample(2)

  end

  def about

  end
end
