class Hole < ActiveRecord::Base
  belongs_to :course

	validates :label, presence: true
	validates :par_1, presence: true
	validates :course_id, presence: true
end
