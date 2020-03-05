class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :status
      t.string :link

      t.timestamps
    end
  end
end
