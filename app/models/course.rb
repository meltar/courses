class Course < ActiveRecord::Base
	after_initialize :init

	validates :name, presence: true, length: { maximum: 50 }
	validates :number_of_holes, inclusion: { in: 1..99 }

	def init
		self.number_of_holes ||= 18
	end
end
