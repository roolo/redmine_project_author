class ProjectAuthorHookListener < Redmine::Hook::ViewListener
  def view_projects_form(context = {})
    project = context[:project]

    content_tag :p,
      context[:form].select(
        :owned_by_id,
        principals_options_for_select(  User.all,
                                        project.owner
        ),
        include_blank: true,
        required: false
      )
  end
end
