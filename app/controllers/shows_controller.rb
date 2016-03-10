class ShowsController < ApplicationController
  #
  # Returns the last show of each user ordered by user's created_at attribute
  # @CreatedBy: Mauricio Klein
  # @CreatedAt: March 10th, 2016
  #
  def index
    @shows = User
              .order(:created_at)
              .map {|user| user.shows.last}
    render json: @shows
  end
end
