class CreateChairs < ActiveRecord::Migration
  def change
    create_table :chairs do |t|
      t.string :size
      t.string :color
    end
  end
end
