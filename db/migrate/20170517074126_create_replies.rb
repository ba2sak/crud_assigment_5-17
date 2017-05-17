class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
    
        t.integer :post_id
        t.text :content_reply
        t.text :editor_reply
        
      t.timestamps null: false
    end
  end
end
