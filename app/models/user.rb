class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,:trackable, :validatable
  belongs_to :role
  has_many :campaigns, dependent: :destroy
  validates :name, presence: true
  before_save :assign_role

  def admin?
    role.name == 'Admin'
  end

  def seller?
    role.name == 'Seller'
  end

  def regular?
    role.name == 'Regular'
  end

  def assign_role
    self.role = Role.find_by name: 'Regular' if role.nil?
  end

end
