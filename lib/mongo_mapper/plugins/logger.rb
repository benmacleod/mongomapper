# encoding: UTF-8
module MongoMapper
  module Plugins
    module Logger
      extend ActiveSupport::Concern

      module ClassMethods
        def logger
          MongoMapper.logger
        end
      end

      module InstanceMethods
        def logger
          self.class.logger
        end
      end
    end
  end
end