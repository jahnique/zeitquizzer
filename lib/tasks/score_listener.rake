require 'webrick'

namespace :listener do
  desc "Starts the score listener"
  task :start => :environment do
    puts "Start score listener: #{start_listener}"
  end

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

