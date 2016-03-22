class CreateArtivles < ActiveRecord::Migration
  def change
    create_table :artivles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
