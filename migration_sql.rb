require 'migration_sql/generator'

puts "*" * 100
puts "*" * 10
puts "*" * 100

# 
# class ActiveRecord::Base
#   
#   attr_accessor :sql_stmt
#   
#   def connection
#     MigrationSql::FakeConnection.new
#   end
#   
#   
#   def self.stmt
#     @sql_stmt
#   end
#   
#   
# end

# class ActiveRecord::ConnectionAdapters::Mysql2Adapter
# # class ActiveRecord::ConnectionAdapters::AbstractMysqlAdapter
# # class AbstractAdapter
#   
#   attr_accessor :sql_stmt  
#   
#   def execute(sql, name = nil)
#     @sql_stmt = [] if !@sql_stmt
#     @sql_stmt << "#{sql}"
#     # "OUT: #{sql} "
#     "aaa"
#   end
#   
# end


module MigrationSql
  
end

