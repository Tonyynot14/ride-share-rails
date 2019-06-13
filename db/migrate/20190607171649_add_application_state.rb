class AddApplicationState < ActiveRecord::Migration[5.2]
  def change
    add_column  :drivers, :application_state, :string
  end
end
