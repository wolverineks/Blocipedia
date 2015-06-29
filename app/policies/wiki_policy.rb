class WikiPolicy < ApplicationPolicy
  
  def index?
    true
  end

  def show?
    record.users.include?(user) || !record.private? || record.user == user || (user.present? && user.admin?)
  end

  def update?
    user.present? && show?
  end

  def edit?
    update?
  end

  def destroy?
    user.present? && user.admin?
  end

  class Scope
    attr_reader :user, :scope
 
    def initialize(user, scope)
      @user = user
      @scope = scope
    end
 
    def resolve
      wikis = []
      if user && user.role == 'admin'
        wikis = scope.all # if the user is an admin, show them all the wikis
      
      elsif user && user.role == 'premium'
        all_wikis = scope.all
        all_wikis.each do |wiki|
          if !wiki.private? || wiki.user == user || wiki.users.include?(user)
            wikis << wiki # if the user is premium, only show them public wikis, or that private   wikis they created, or private wikis they are a collaborator on
          end
        end
      
      elsif user && user? # this is the lowly standard user
        all_wikis = scope.all
        wikis = []
        all_wikis.each do |wiki|
          if !wiki.private? || wiki.users.include?(user)
            wikis << wiki # only show standard users public wikis and private wikis they are are collaborator on
          end
        end
      
      else #no user
        all_wikis = scope.all
        wikis = []
        all_wikis.each do |wiki|
          if !wiki.private?
            wikis << wiki # only show standard users public wikis and private wikis they are are collaborator on
          end
        end
      end
      wikis # return the wikis array we've built up
   end


























    # def resolve
    #   if user && user.role == 'admin'
    #     scope.all # if admin user, show them all the wikis
    #   elsif user && user.role == 'premium' # if premium user, show them all public wikis and their collab wikis
    #     scope.where(:private => 1, users: user.id )
    #     #scope.find_by_sql ("SELECT * FROM wikis WHERE private = 0") # OR user_id in users
    #   else # if standard user or not signed in
    #     scope.where(:private => 0 )
    #     #scope.find_by_sql ("SELECT * FROM wikis WHERE private = 0")
    #   end
    # end
  end

end