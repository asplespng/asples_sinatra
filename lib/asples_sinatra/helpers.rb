module AsplesSinatra
  module Helpers
    def input(name, options={})
      haml :input, {layout: false}, options.merge!({field_name: name})
    end
  end
end
