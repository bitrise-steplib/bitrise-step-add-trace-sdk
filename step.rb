require_relative 'project_helper'

path = ARGV[0]
scheme = ARGV[1]
config = ARGV[2]
helper = ProjectHelper.new path, scheme, config

targets = helper.targets.collect(&:name)
development_team =   helper.project_team_id

targets.each do |target_name|
    helper.link_static_library(target_name, development_team)
end