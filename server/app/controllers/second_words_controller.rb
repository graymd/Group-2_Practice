class SecondWordsController < ApplicationController
    def index
    # gets all Shoutouts from db
    @second_words = SecondWord.all
    # selects only objects with mood type passed from FE.
    @second_words = @second_words.where(mood: "type_one")
    # picks a random shoutout from db
    @second_words = @second_words.shuffle.slice(0) 
    respond_to do |format|
      format.json { render json: @second_words.to_json }
    end

  end
end
