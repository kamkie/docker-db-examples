#!/usr/bin/env bash

#wait for the SQL Server to come up
sleep 20s

#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'PaSsw0rd!' -d master -i /usr/src/app/setup.sql

#import the data from the csv file
#/opt/mssql-tools/bin/bcp DemoData.dbo.Products in "/usr/src/app/Products.csv" -c -t',' -S localhost -U sa -P Yukon900
