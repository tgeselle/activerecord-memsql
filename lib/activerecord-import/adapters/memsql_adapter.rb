module ActiveRecord::Import::MemsqlAdapter
  include ActiveRecord::Import::ImportSupport

  def max_allowed_packet
    1000
  end
end
