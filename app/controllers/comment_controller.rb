class CommentController < ApplicationController
   def reply_create
        
        new_reply = Reply.new
        new_reply.editor_reply = params[:rep_editor]
        new_reply.content_reply = params[:rep_content]
        new_reply.post_id = params[:reply_id]
        new_reply.save
        
        redirect_to :back
        
    end
    
    def reply_delete
        
        comment_del = Reply.find(params[:reply_id])
        comment_del.destroy
    
        redirect_to :back
    end
end
