class UsersController < ApplicationController
def show
  @videos = current_user.videos.order(created_at: :desc)
end
end
