class CreateTable < (ActiveRecord::VERSION::MAJOR >= 5 ? ActiveRecord::Migration[[ActiveRecord::VERSION::MAJOR, ActiveRecord::VERSION::MINOR].join('.')] : ActiveRecord::Migration)
  def change
    create_table :users do |t|
      t.string :name
      t.string :name_indexed

      t.timestamps null: false
    end

    add_index :users, :name_indexed
  end
end
