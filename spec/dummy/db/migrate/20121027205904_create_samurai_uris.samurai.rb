# This migration comes from samurai (originally 20121027020033)
class CreateSamuraiUris < ActiveRecord::Migration
  def change
    create_table :samurai_uris do |t|

      t.timestamps
    end
  end
end
