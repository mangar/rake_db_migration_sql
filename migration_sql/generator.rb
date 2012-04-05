module MigrationSql
  class Generator
    class << self
      
      def generate   
        start
         
        migrations.each do |file_name|
          file_name_2 = File.basename(file_name, ".rb")
          MigrationSql::Migration.new(file_name_2).generate
        end
      end
    
    
      private 
    
      def migrations
        Dir.glob(File.join(Rails.root, "db", "migrate", '*.rb'))
      end

      def start
        Dir.mkdir(File.join(Rails.root, "db", "sql")) if !File.directory? File.join(Rails.root, "db", "sql")
      end

    
    end
  end
end