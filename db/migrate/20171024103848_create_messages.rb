class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :username
      t.string :body, limit: 1000

      t.timestamps
    end
  end
end
