module ScoreListener
  require 'webrick'
  require 'pry'

  def self.start_listener
    root = File.expand_path '~/Desktop/'
    server = WEBrick::HTTPServer.new :Port => 1860, :DocumentRoot => root

    server.mount_proc '/' do |req, res|
      res.header["Access-Control-Allow-Origin"] = "*"
      set_score(req.query.keys.first, req.query.values.first)
    end

    trap('INT') { server.stop }
    server.start
  end

  def self.set_score(quizzer, score)
    q = Quizzer.find_by_name quizzer
    s = Score.create! value: score.to_i
    q.scores << s
  end
end
