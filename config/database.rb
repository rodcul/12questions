
env = ENV['RACK_ENV'] || 'development'

DataMapper::Property::String.length(255)

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/q12app_#{env}")
