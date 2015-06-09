class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false, default: "Title"
      t.text :body, null: false, default: "Blog here"

      t.timestamps null: false
    end
  end
end
