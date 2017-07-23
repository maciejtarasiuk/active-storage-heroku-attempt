class CreateMessage < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :title
      t.text :content
    end
  end
end
