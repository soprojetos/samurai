# This migration comes from samurai (originally 20121027205603)
class CreateSamuraiSeoTags < ActiveRecord::Migration
  def change
    create_table :samurai_seo_tags do |t|
      t.text :properties

      t.timestamps
    end
  end
end
