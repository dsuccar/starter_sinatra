class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :actor_id
      t.integer :director_id
    end
  end
end
