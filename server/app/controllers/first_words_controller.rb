class FirstWordsController < ApplicationController
    def index
    # gets all Shoutouts from db
    @first_words = FirstWord.all
    # selects only objects with mood type passed from FE.
    @first_words = @first_words.where(mood: "type_one")
    # picks a random shoutout from db
    @first_words = @first_words.shuffle.slice(0) 
    respond_to do |format|
      format.json { render json: @first_words.to_json }
    end

  end
end
