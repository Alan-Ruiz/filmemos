class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def home?
    true
  end

   def show?
    true
  end

  def index?
    true
  end

  def create?
    return true
  end

  def edit?
    true
  end

  def update?
    true
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    true
  end
end
