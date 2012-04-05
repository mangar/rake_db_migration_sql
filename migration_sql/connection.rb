module MigrationSql
  class Connection
    
    def initialize connection
      @con = connection
    end
    
    def start

      def @con._start
        @sql_stmt = []
      end
      def @con.sql_stmt       
        _stmt =""   
        @sql_stmt.each do |stmt|
          _stmt += "#{stmt} \n"
        end
        _stmt
      end
      def @con.execute(sql, name = nil)
        @sql_stmt = [] if !@sql_stmt
        @sql_stmt << sql + ";"
        sql
      end

      @con._start
      
      @con
    end
    
  end
end