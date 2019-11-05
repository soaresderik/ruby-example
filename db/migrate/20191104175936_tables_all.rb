class TablesAll < ActiveRecord::Migration[5.2]
  def up
    execute "create table menu (
              id integer primary key,
              name text,
              preco integer,
              created_at timestamp current_time
          );"

    execute "create table mesas (
              id integer primary key,
              name text,
              created_at timestamp current_time
          );"

    execute "create table pedidos (
              id integer primary key,
              name text,
              mesa_id integer,
              menu_id integer,
              pago BOOLEAN,
              created_at timestamp current_time,
              FOREIGN KEY (menu_id) REFERENCES menu (id),
              FOREIGN KEY (mesa_id) REFERENCES mesas (id)
          );"
  end

  def down
    execute "drop table menu;"
    execute "drop table mesas;"
    execute "drop table pedidos;"
  end
end
