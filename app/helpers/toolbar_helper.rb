module ToolbarHelper
  def toolbar_link_to(name = nil, options = nil, html_options = {}, &block)
    link_to name, options, html_options.reverse_merge(
      class: "btn btn-primary"
    )
  end

  def toolbar_delete_link_to(name = nil, options = nil, html_options = {}, &block)
    link_to name, options, html_options.reverse_merge(
      class: "btn btn-danger",
      data: {
        turbo_method: :delete,
        turbo_confirm: "Are you sure?"
      }
    )
  end
end
