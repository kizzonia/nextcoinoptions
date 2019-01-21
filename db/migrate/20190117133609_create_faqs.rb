class CreateFaqs < ActiveRecord::Migration[5.2]
  def change
    create_table :faqs do |t|
      t.string :title
      t.string :body
      t.string :slug, unique: true

      t.timestamps
    end
    add_index :faqs, :slug
  end
end
