class AddAdminNameToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :admin_name, :string
  end
end
