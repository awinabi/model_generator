require "model_generator/version"

module ModelGenerator
  def self.inherit_orm(model="TransactionLog")
    orm = 'active_record'
    require "model_generator/orm/#{orm}"
    "ModelGenerator::ORM::#{orm.classify}::#{model}".constantize
  end
end
