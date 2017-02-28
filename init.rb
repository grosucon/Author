require 'project_patch'
require 'user_patch'

Redmine::Plugin.register :authors do
  name 'Authors plugin'
  author 'Grosu Constantin'
  description 'This is a plugin for choosing author of a project'
  version '0.0.1'

  project_module :authors do
    permission :view_authors, :authors => :index
    permission :add_authors, :authors => :create
    permission :edit_authors, :authors => :update
    permission :delete_authors, :authors => :destroy
  end

  menu :project_menu, :authors, { :controller => 'authors', :action => 'index' }, :caption => 'Authors', :after => :activity, :param => :project_id

  require_dependency 'author_hook'

end
