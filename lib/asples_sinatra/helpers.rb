module AsplesSinatra
  module Helpers
    def input(name, options={})
      template_path = File.join(File.dirname(File.expand_path(__FILE__)), '/templates/input.haml')
      tmpl = Tilt.new(template_path)
      tmpl.render(self, options.merge!({field_name: name}))
    end
  end
end
