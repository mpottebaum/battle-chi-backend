module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # identified_by :current_game

    # def connect
    #   puts request.headers['Game ID']
    #   self.current_game = request.headers['Game ID']
    # end
  end
end
