# This migration comes from samurai (originally 20121027020439)
class CreateSamuraiUrls < ActiveRecord::Migration
  def change
    create_table :samurai_urls do |t|
      t.string :uri

      t.timestamps
    end
  end
end
