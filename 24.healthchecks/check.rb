require 'pg'

postgres_username = 'postgres'
postgres_password = ''
test = PG.connect('postgres', 5432, '', '', 'postgres', postgres_username, postgres_password)
puts test.exec('SELECT version();').first['version']
puts 'Healthy!'
