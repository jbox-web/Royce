# frozen_string_literal: true

module Royce
  module Schema

    def load_schema!
      super

      (available_role_names || []).each do |name|
        Role.find_or_create_by(name: name)
      end
    end

  end
end
