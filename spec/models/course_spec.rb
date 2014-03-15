require 'spec_helper'

describe Course do
	let(:course) { Course.new(name: "Test Course One",
														description: "My favorite course at the park",
														address: "123 Address Rd",
														city: "Atlanta",
														state: "GA",
														zip: "30342", 
														number_of_holes: 9) }
	let(:new_course) { Course.create(name: "Test Course Two") }

	describe "validations" do

		it "should be valid" do
			expect(course).to be_valid
		end

		describe "name" do

			it "should have a name" do
				expect(course.name).to be_present
			end

			describe "invalid name" do
				before { course.name = "a" * 51 }

				it "should be invalid with a name greater than 50 characters" do
					expect(course).to_not be_valid
				end
			end

			describe "no name" do
				before { course.name = nil }

				it "should be invalid without a name" do
					expect(course).to_not be_valid
				end
			end
		end

		describe "holes" do

			it "should have 18 holes by default" do
				expect(new_course.number_of_holes).to eq(18)
			end

			describe "too few holes" do
				before { course.number_of_holes = 0 }

				it "should be greater than 0" do
					expect(course).to_not be_valid
				end
			end

			describe "too many holes" do
				before { course.number_of_holes = 100 }

				it "should be less than 100" do
					expect(course).to_not be_valid
				end
			end
		end

	end

end
