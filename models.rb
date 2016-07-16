require 'bundler/setup'
Bundler.require

if development?
    ActiveRecord::Base.establish_connection("sqlite3:db/development.db")
end

class Video < ActiveRecord::Base
  validates :video_id, uniqueness: true
end
