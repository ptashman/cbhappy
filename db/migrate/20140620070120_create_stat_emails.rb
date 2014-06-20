class CreateStatEmails < ActiveRecord::Migration
  def change
    create_table :stat_emails do |t|
      t.string :email
      t.timestamps
    end
  end
end
