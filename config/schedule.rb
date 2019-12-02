# Use this file to easily define all of your cron jobs.
set :environment, "development"
set :output, "log/cron.log"

# Learn more: http://github.com/javan/whenever
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

    every 1.minute do
      rake :notify
    end


# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end
