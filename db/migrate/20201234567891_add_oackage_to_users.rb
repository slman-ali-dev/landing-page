# frozen_string_literal: true

class AddActivationToUsers < ActiveRecord::Migration[5.3]
  def change
    add_column :users, :session_duration, :string
  end
end
