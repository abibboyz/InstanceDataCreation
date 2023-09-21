class CreateJobseekers < ActiveRecord::Migration[7.0]
  def change
    create_table :jobseekers do |t|
      t.string :full_name
      t.string :email
      t.references :site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
