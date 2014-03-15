namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_courses
	end
end

def make_courses

	25.times do |course|
		course_name = "#{Faker::Name.last_name} Park"
		course_city = Faker::Address.city
		course_state = Faker::Address.state_abbr
		Course.create(name: course_name,
									address: Faker::Address.street_address,
									city: course_city,
									state: course_state,
									zip: Faker::Address.zip_code,
									description: "Course at #{course_name} in #{course_city}, #{course_state}",
									number_of_holes: [9,18,36,18,18,9,18].sample,
								 )
	end
end
