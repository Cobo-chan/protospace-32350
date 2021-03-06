class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  with_options presence: true do |v|
    v.validates :name, :profile, :occupation, :position 
  end

  has_many :prototypes
  has_many :comments
end
