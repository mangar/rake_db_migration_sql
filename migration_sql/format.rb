module MigrationSql
  class Format
    
    def initialize stmt
      @stmt = stmt
    end
    
    
    def format
      content = ""
      @stmt.split(',').each { |d| 
        
        if ( "#{d}".include?("ALTER TABLE") )
          d += "\n"
        
        elsif ( "#{d}".include?(") ENGINE") )
          d = "#{d}"
          
        else
          d += ", \n"  
          
        end
        
        if   ( "#{d}".include?("(`id`") )
          d = "#{d}".gsub("(`id`", "(\n `id`")  
        end
      
        content += "#{d}"
      
      }
      content
    end
    
  end
end