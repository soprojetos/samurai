class AddRecordIdToSamuraiSeoTags < ActiveRecord::Migration
  def change
    add_column :samurai_seo_tags, :record_id, :integer
  end
end
