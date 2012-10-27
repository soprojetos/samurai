class CreateSamuraiSeoTags < ActiveRecord::Migration
  def change
    create_table :samurai_seo_tags do |t|
      t.string :key
      t.text :properties

      t.timestamps
    end
  end
end
