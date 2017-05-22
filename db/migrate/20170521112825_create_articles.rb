class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :featured_image
      t.text :headline
      t.text :content

      t.timestamps
    end
  end
end
