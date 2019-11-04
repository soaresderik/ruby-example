class Users < ActiveRecord::Migration[5.2]
  def up
    execute "create table users (
      id integer primary key,
      name text,
      email text,
      password text,
      created_at timestamp current_time
    );"
  end

  def down
    execute "drop table users;"
  end
end
