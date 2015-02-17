class AddUserListsTable < ActiveRecord::Migration
  def change
    create_table :userlists do |t|
      t.belongs_to :user
      t.belongs_to :list 
    end
  end
end
