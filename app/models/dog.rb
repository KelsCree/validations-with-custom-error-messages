class Dog < ApplicationRecord
  validates :name, presence: { message: "Give me a name!" }, uniqueness: { case_sensitive: false, message: "Don't be a copycat"}

  # custom validation
  
  validate :name, :cannot_be_vulgar
  def cannot_be_vulgar
    if name.downcase == 'shit'
      errors.add(:name, 'clean that shit up')
    end
  end
end