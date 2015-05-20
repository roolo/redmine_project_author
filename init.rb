Redmine::Plugin.register :project_author do
  name 'Project Author plugin'
  author 'Mailo Svetel'
  description 'This is plugin for Redmine adds Author into project'
  version '0.0.1'
  url 'https://github.com/roolo/redmine_project_author'
  author_url 'https://github.com/roolo'
end

require_relative './lib/project_author_patch'
require_dependency 'project_author_hook_listener'
