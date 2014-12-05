class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.references :user, index: true
      t.string :provider, null: false, default: ""
      t.string :uid, null: false, default: ""

      t.timestamps
    end
  end
end
