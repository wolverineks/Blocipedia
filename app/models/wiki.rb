class Wiki < ActiveRecord::Base
  belongs_to :user

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true

  default_scope { order(title: 'ASC') }

  scope :visible_to, -> (user) { user ? all : publicly_viewable }

  scope :publicly_viewable, -> { where(private: false) }

end
