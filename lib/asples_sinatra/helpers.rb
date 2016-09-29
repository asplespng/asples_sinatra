enable :inline_templates
module AsplesSinatra
  module Helpers
    def input(name, options={})
      haml :'input', {layout: false}, options.merge!({field_name: name})
    end
  end
end


__END__

@@ input
%div{class: "form-group #{object.respond_to?(:errors) && object.errors.has_key?(field_name) && object.errors[field_name].any? && "has-error"}"}
  -field_type = defined?(as) && as.present? ? as : :text
  -field_label = defined?(label) && label.present? ? label : field_name.to_s.humanize
  -field_placeholder = defined?(placeholder) && placeholder.present? ? placeholder : "Enter #{field_name.to_s.humanize.downcase}"
  %label.control-label{for: field_name}="#{field_label}:"
  %input{type: field_type, name: field_name, class: "form-control", placeholder: field_placeholder, value: object.send(field_name)}
  %span.help-block
    = object.errors[field_name].join('. ') if object.respond_to?(:errors) && object.errors.has_key?(field_name) && object.errors.any?
