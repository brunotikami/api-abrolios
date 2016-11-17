# -*- coding: utf-8 -*-
import os, sys, csv, sqlite3
from django.conf import settings


def main():
    import pdb; pdb.set_trace()
    tablename = "feiraapp_feira"
    csvfile = os.getcwd() + '/DEINFO_AB_FEIRASLIVRES_2014.csv' 
    dbname = settings.DATABASE_NAME
    conn = sqlite3.connect(dbname) # database file input
    cur = conn.cursor()
    
    with open(csvfile, "rb") as f:
        reader = csv.reader(f)
        header = True
        for row in reader:
            if header:
                # gather column names from the first row of the csv
                header = False
                
                sql = "DROP TABLE IF EXISTS %s" % tablename
                cur.execute(sql)
                sql = "CREATE TABLE %s (%s)" % (tablename,
                            ", ".join([ "%s text" % column for column in row ]))
                cur.execute(sql)

                for column in row:
                    if column.lower().endswith("_id"):
                        index = "%s__%s" % ( tablename, column )
                        sql = "CREATE INDEX %s on %s (%s)" % ( index, tablename, column )
                        cur.execute(sql)
 
                insertsql = "INSERT INTO %s VALUES (%s)" % (tablename,
                            ", ".join([ "?" for column in row ]))
 
                rowlen = len(row)
            else:
                # skip lines that don't have the right number of columns
                if len(row) == rowlen:
                    cur.execute(insertsql, row)
 
        conn.commit()

    conn.close() # closes connection to database

if __name__=='__main__':
    main()
