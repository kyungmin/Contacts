class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :name, :null => false
      t.string    :email
      t.timestamps
    end
  end
end
