class WikiPolicy < ApplicationPolicy
  
  def index?
    true
  end

  def show?
    !record.private? || record.user == user || user.admin?
  end

  def destroy?
    user.present? && user.admin?
  end

end