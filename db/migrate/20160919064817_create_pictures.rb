class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :content
      t.string :pct_url
      t.string :img_url

      t.timestamps null: false
    end
  end
end
