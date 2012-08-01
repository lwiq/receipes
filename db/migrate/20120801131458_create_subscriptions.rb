class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :magazine_id
      t.integer :reader_id
      t.date :last_renewal_on
      t.integer :length_in_issues
    end
  end
end
