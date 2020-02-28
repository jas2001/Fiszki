class WordsController < ApplicationController
    def index
        @words = Word.all
    end

    def show
        @word = Word.find(params[:id])
    end

    def new
        @word = Word.new
        @category = Category.all
    end

    def create
        @word = Word.create(word_params)
        redirect_to @word
    end

    def edit
        @word = Word.find(params[:id])
    end

    def update
        @word = Word.find(params[:id]).update_attributes(word_params)
        if @word.update_attributes(word_params)
            redirect_to @word
        else
            render 'edit'
        end
    end

    def destroy
        @word = Word.find(params[:id]).destroy
        redirect_to words_path
    end

    private

    def word_params
        params.require(:word).permit(:polish,:english,:spanish,:category_id)
    end
end