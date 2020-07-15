class User < ApplicationRecord
  has_many :projects 
  has_many :categories, through: :projects 
  has_many :comments
  has_many :commented_projects, through :comments, 
  source: :project 

end
