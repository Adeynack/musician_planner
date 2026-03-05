class BootstrapFormBuilder < ActionView::Helpers::FormBuilder
  def label(method, text = nil, options = {}, &block)
    default_options = {
      class: "form-label"
    }
    super(method, text, default_options.merge(options), &block)
  end

  def text_field(method, options = {})
    default_options = {
      class: "form-control"
    }
    super(method, default_options.merge(options))
  end

  def date_field(method, options = {})
    default_options = {
      class: "form-control"
    }
    super(method, default_options.merge(options))
  end

  def submit(value = nil, options = {})
    default_options = {
      class: "btn btn-primary"
    }
    super(value, default_options.merge(options))
  end
end
