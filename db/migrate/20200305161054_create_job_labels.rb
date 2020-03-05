class CreateJobLabels < ActiveRecord::Migration[6.0]
  def change
    create_table :job_labels do |t|
      t.integer :label_id
      t.integer :job_id

      t.timestamps
    end
  end
end
