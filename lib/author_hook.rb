class AuthorHook < Redmine::Hook::ViewListener

  render_on :view_projects_show_right, :partial => "authors/project_overview"

  render_on :view_account_left_bottom, :partial => "authors/authors_user_hook"

end