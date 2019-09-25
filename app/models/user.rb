class User < ApplicationRecord
  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :trackable,
         :recoverable, :rememberable, :validatable, :timeoutable, :lockable,
         :authentication_keys => [:name]
         
  # nameを必須、一意とする
  validates_uniqueness_of :name
  validates_presence_of :name
end
