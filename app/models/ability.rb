# class Ability
#   include CanCan::Ability
#
#   def initialize(user)
#     if user.nil?
#       can :read, Video
#     elsif user.admin?
#       can :manage, Video
#     else
#       can [:read, :create], Video
#       can [:update, :destroy], Video, :user_id => user.id
#     end
#   end
# end

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can [:read, :create], Video
      can [:update, :destroy], Video, :user_id => user.id
    end

  end
end
