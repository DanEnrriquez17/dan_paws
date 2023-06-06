class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pets, dependent: :destroy
  has_many :pets, through: :adoptions, dependent: :destroy
  validates :age, comparison: { greater_than: 18 }
  validates :name, :last_name, :age, :preferences, :address, presence: true
end
