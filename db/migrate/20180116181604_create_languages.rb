class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.integer :post_id
      t.string :language
    end
  end
end
