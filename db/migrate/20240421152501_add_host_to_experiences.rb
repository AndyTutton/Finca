class AddHostToExperiences < ActiveRecord::Migration[7.1]
  def change
    add_reference :experiences, :host, foreign_key: { to_table: :users }
  end
end
