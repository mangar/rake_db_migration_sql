module MigrationSql
  class Migration

    def initialize file_name
      @file_name = file_name
    end

    def generate
      puts "Generating ...  #{@file_name}"
      require "#{@file_name}"
      create_sql_file execute
      puts "done!"
    end

    
    
    
    private
    
    def name
      /^(\d+)_(.*)$/.match(@file_name)[2]
    end
    
    def migration_class
      name.camelize
    end


    def execute
      my = eval(migration_class).new      
      MigrationSql::Connection.new(my.connection).start

      begin
        my.up
        my.change        
      rescue Exception => e
        
      end
      
      my.connection.sql_stmt
    end
    
   
    
   
    
    def create_sql_file content=""
      open(File.join(Rails.root, "db", "sql", "#{@file_name}.sql"), 'w') { |f|
        f << "## \n"
        f << "## Source File: #{@file_name}.rb \n"
        f << "## Class: #{migration_class}  \n"
        f << "## \n"
        f << "#{MigrationSql::Format.new(content).format}"
      }
      content
    end
    
    


  end
end