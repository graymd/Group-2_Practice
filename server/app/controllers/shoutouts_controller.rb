class ShoutoutsController < ApplicationController

  def index
    # gets all Shoutouts from db
    @shoutouts = Shoutout.all
    # selects only objects with mood type passed from FE.
    @shoutouts = @shoutouts.where(mood: "type_one")
    # picks a random shoutout from db
    @shoutouts = @shoutouts.shuffle.slice(0) 
    respond_to do |format|
      format.json { render json: @shoutouts.to_json }
    end





  end

end
