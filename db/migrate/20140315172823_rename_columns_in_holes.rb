class RenameColumnsInHoles < ActiveRecord::Migration
  def change
		change_table :holes do |t|
			t.rename :tee_1_par,			:par_1
			t.rename :tee_1_length,		:length_1
			t.rename :tee_2_par,			:par_2
			t.rename :tee_2_length,		:length_2
			t.rename :tee_3_par,			:par_3
			t.rename :tee_3_length,		:length_3
			t.rename :tee_4_par,			:par_4
			t.rename :tee_4_length,		:length_4
		end
  end
end
