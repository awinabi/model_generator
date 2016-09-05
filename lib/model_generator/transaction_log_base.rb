module ModelGenerator
  class TransactionLogBase < inherit_orm

    def status
      return 'PROCESSED' if response
      'UNPROCESSED'
    end
  end
end
