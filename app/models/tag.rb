class Tag < ActiveRecord::Base
  has_many :task_tags
  has_many :tasks, through: :task_tags
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  end
  def self.search(search)
     where("name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%") 
  end
end
