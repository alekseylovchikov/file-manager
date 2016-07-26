class DocsController < ApplicationController
    before_action :find_doc, only: [:show, :edit, :destroy, :update]
    
    def index
        @user = current_user
        
        # @docs = @user.docs.all.order("created_at DESC")    
        @docs = Doc.where(user_id: current_user)
    end
    
    def show
        @doc = Doc.find(params[:id])
    end
    
    def new
        @doc = current_user.docs.build
    end
    
    def create
        @doc = current_user.docs.build(doc_params)
        
        if @doc.save
            flash[:success] = 'File succesfully created'
            redirect_to @doc
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @doc.update(doc_params)
            flash[:success] = 'File succesfully updated'
            redirect_to @doc
        else
            render 'edit'
        end
    end
    
    def destroy
        @doc.destroy
        if @doc.destroy
            flash[:success] = 'File deleted succesfully'
            redirect_to docs_path
        end
    end
    
    private
        def find_doc
            @doc = Doc.find(params[:id])
        end
        
        def doc_params
            params.require(:doc).permit(:title, :content)
        end
end
