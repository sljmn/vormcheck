class UsersController < ApplicationController

  before_action :authenticate_user!, :except => [:index]

def index

end
def show
  @videos = current_user.videos.order(created_at: :desc)
  @user = User.find(params[:id])
end
end
