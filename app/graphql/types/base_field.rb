# frozen_string_literal: true

module Types
  class BaseField < GraphQL::Schema::Field
    argument_class Types::BaseArgument

    def initialize(*args, authenticate: nil, **kwargs, &block)
      @authenticate = authenticate
      super(*args, **kwargs, &block)
    end

    attr_reader :authenticate
  end
end
