class CommentPolicy < ApplicationPolicy
  def index?
    true
  end

  def new?
    create?
  end

  def create?
     user.present?
  end

end

