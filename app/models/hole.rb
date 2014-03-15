class Hole < ActiveRecord::Base
  belongs_to :course

	validates :label, presence: true
	validates :tee_1_par, presence: true
end
