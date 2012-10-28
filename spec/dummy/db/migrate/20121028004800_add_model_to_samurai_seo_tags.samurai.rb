# This migration comes from samurai (originally 20121028004720)
class AddModelToSamuraiSeoTags < ActiveRecord::Migration
  def change
    add_column :samurai_seo_tags, :model, :string
  end
end
