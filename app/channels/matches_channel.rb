class MatchesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "matches_channel"
  end

  def unsubscribed
  end
end
