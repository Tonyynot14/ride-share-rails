class RemoveOrganizationDevise < ActiveRecord::Migration[5.2]
  def change
    remove_column  :organizations, :email
    remove_column  :organizations, :encrypted_password
    remove_column  :organizations, :reset_password_token
    remove_column  :organizations, :reset_password_sent_at
    remove_column  :organizations, :remember_created_at
    add_column  :organizations, :street, :string
    add_column  :organizations, :city, :string
    add_column  :organizations, :state, :string
    add_column  :organizations, :zip, :string
  end
end
