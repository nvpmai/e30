class CreateArticlesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :articles_users do |t|
      t.references :article, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
