require 'active_record'
require 'yaml'
require 'dotenv'
require 'erb'

# Load environment variables from .env file
Dotenv.load

# Get the current environment, default to development
ENV['ENV'] ||= 'development'

# Load database configuration
db_config_file = File.join(File.dirname(__FILE__), 'config.yml')
db_config = YAML.load(ERB.new(File.read(db_config_file)).result, aliases: true)

# Establish database connection
ActiveRecord::Base.establish_connection(db_config[ENV['ENV']])

# Optional: Log database operations in development
if ENV['ENV'] == 'development'
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end