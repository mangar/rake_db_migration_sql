namespace "db" do
 namespace "generate" do
   desc "generate sql for migrations"
   task "sql" => :environment do
     MigrationSql::Generator.generate
   end
 end
end