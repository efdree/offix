class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :department, counter_cache: true
  belongs_to :manager, class_name: 'Employee', optional: true
  has_many :reports, class_name: "Employee", foreign_key: "manager_id", dependent: :destroy, inverse_of: "manager"
  has_one_attached :avatar
  has_many :feedbacks, dependent: :destroy
  has_many :receive_feedbacks, class_name: "Feedback", as: :feedbackable, dependent: :destroy

  enum role: { admin: 0, regular: 1}
end
