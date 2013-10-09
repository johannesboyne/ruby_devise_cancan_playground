class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.is_a? Admin
      can :manage, Status
    else
      can :read, :all
    end
  end
end
