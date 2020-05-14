class GamesChannel < ApplicationCable::Channel
  def subscribed
    # puts current_game
    stream_from "games_channel_#{current_game}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
