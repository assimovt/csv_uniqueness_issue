class Task < ActiveRecord::Base
  belongs_to :user
  validates :title,
            presence: true,
            uniqueness: { scope: :user, case_sensitive: false }
end
