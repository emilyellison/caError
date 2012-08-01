class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.string :title
      t.text :error_message
      t.text :explanation
      t.string :name

      t.timestamps
    end
  end
end
