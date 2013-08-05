#!/usr/bin/env ruby

def app
  app = File.basename(Dir.pwd)
  app = File.basename(File.expand_path("..", Dir.pwd)) if app == 'script'
  app
end

system("bundle package && bundle && rake assets:precompile && af update " + app)
