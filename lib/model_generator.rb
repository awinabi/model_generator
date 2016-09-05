require "model_generator/version"
require 'active_support'

module ModelGenerator
  extend ActiveSupport::Autoload

  autoload :TransactionLogBase, 'model_generator/transaction_log_base'


  def self.inherit_orm(model="TransactionLog")
    orm = 'active_record'
    require "model_generator/orm/#{orm}"
    "ModelGenerator::ORM::#{orm.classify}::#{model}".constantize
  end
end
