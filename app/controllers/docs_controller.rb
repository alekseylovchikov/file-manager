class DocsController < ApplicationController
    before_action :find_doc
    
    def index
        
    end
    
    def show
    end
    
    def new
    end
    
    def create
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
        def find_doc
            @doc = Doc.find(params[:id])
        end
        
        def doc_params
        end
end
