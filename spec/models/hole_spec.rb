require 'spec_helper'

describe Hole do
	let(:course) { Course.new(name: "Test Course One",
														description: "My favorite course at the park",
														address: "123 Address Rd",
														city: "Atlanta",
														state: "GA",
														zip: "30342", 
														number_of_holes: 9,
														) }
	let(:hole) { Hole.new(course_id: course.id,
												tee_1_par: 3,
												label: "6",
											 ) }

	describe "validations" do

		it "should be valid" do
			expect(hole).to be_valid
		end

		describe "label" do
			it "should have a label" do
				expect(hole.label).to be_present
			end

			describe "no label" do
				before { hole.label = nil }

				it "should be invalid without a label" do
					expect(hole).to_not be_valid
				end
			end
		end

		describe "tees" do
			it "should have a par" do
				expect(hole.tee_1_par).to be_present
			end
		end

	end

end

