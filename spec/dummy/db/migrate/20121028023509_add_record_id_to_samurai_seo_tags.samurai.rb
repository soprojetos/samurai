# This migration comes from samurai (originally 20121028023501)
class AddRecordIdToSamuraiSeoTags < ActiveRecord::Migration
  def change
    add_column :samurai_seo_tags, :record_id, :integer
  end
end
