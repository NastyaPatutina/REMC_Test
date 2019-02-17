module Filterable
  extend ActiveSupport::Concern

  module ClassMethods
    def filter(filtering_params)
      results = self.all
      filtering_params.each_pair do |key, value|
        results = results.public_send(key, value) if self.methods(false).map(&:to_s).include?(key)
      end
      results
    end
  end
end