class AddAttachmentThemeToBlogPosts < ActiveRecord::Migration
  def self.up
    change_table :blog_posts do |t|
      t.attachment :theme
    end
  end

  def self.down
    remove_attachment :blog_posts, :theme
  end
end
