require 'rails/generators/active_record'

module ModelGenerator
  module Generators
    # For creating model file
    class TransactionLogGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      argument :name, :type => :string, :default => 'transaction_log'
      # Create model in project's folder
      def generate_files
        copy_file 'transaction_log.rb', "app/models/#{name}.rb"
      end
    end
  end
end
