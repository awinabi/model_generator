module ModelGenerator
  class TransactionLog < inherit_orm

    def status
      return 'PROCESSED' if response
      'UNPROCESSED'
    end
  end
end
