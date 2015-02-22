class HomeController < ApplicationController

def index

    @shoutouts = Shoutout.all
    @shoutouts = @shoutouts.where(mood: params[:mood])
    @shoutout = @shoutouts.shuffle.slice(0)
    @first_words = FirstWord.all
    @first_words = @first_words.where(mood: params[:mood])
    @first_word = @first_words.shuffle.slice(0)
    @second_words = SecondWord.all
    @second_words = @second_words.where(mood: params[:mood])
    @second_word = @second_words.shuffle.slice(0)
    @images = Image.all
    @image = @images.shuffle.slice(0)

    data = {
      word_one: @first_word,
      word_two: @second_word,
      shoutouts: @shoutout,
      images: @image
    }

    p "sending #{data}"

    respond_to do |format|
      format.json { render json: data }
    end
  end
end
