class Wiki < ActiveRecord::Base
  belongs_to :user

  has_many :collaborators

  has_many :users, through: :collaborators

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :user_id, presence: true

  default_scope { order(title: 'ASC') }

  def collaborator_for(user)
    collaborators.where(user: user).first.id
  end

end