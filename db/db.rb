require 'pg'

def run_sql(sql, params = []) 
  db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'music_by'})
  data = db.exec_params(sql, params) 
  db.close
  data
end 
