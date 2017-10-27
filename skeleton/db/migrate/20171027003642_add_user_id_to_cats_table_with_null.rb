class AddUserIdToCatsTableWithNull < ActiveRecord::Migration[5.1]
  def change
    def up
      add_column :cats, :user_id, :integer, null: false
      add_index :cats, :user_id
    end

    def down
      remove_column :cats, :user_id, :integer
    end
  end
end
