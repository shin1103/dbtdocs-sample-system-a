.open sample.duckdb
create schema systema;
create schema systemb;
create schema master_info;
create table master_info.customer(cust_id INTEGER PRIMARY KEY, cust_name varchar, tel varchar, address varchar );
create table systema.tran_table(id INTEGER PRIMARY KEY, value varchar, cust_id INTEGER);
create table systemb.tran_table(id INTEGER PRIMARY KEY, value varchar, cust_id INTEGER);