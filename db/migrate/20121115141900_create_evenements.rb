class CreateEvenements < ActiveRecord::Migration
  def change
    create_table :evenements do |t|
      t.string :title
      t.text :content
      t.string :place
      t.datetime :date

      t.timestamps
    end
  end
end
