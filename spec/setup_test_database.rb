require 'pg'

p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark_manager_test')

@setup_test_database = connection.exec("TRUNCATE bookmarks;")