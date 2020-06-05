class CreateRating < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.float :score
      t.references :wine, foreign_key: true
      t.references :enologist, foreign_key: true
    end
  end
end
