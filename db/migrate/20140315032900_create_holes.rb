class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.references :course, index: true
      t.string :label
      t.integer :tee_1_length
      t.string :tee_1_par
      t.integer :tee_2_length
      t.integer :tee_2_par
      t.integer :tee_3_length
      t.integer :tee_3_par
      t.integer :tee_4_length
      t.integer :tee_4_par

      t.timestamps
    end
  end
end
