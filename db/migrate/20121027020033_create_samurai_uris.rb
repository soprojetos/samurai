class CreateSamuraiUris < ActiveRecord::Migration
  def change
    create_table :samurai_uris do |t|

      t.timestamps
    end
  end
end
