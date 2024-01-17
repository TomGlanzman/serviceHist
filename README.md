## Information about this project is contained [here](https://confluence.slac.stanford.edu/x/1KdAFg)
 
Note: this repository is intended only to create an initial database, not to maintain it once created.  Once the database goes into production, this repo should be retired, or modified to reflect the final maintenance scheme.

--> July 2023 - For the moment, the serviceHist database is being maintained via the technique used by this repo, i.e., change the "fill*.sql" files and remake the database when there are changes.

Hint: use the ".headers on" and ".mode table" to more easily view sqlite3 output

--> 4 Jan 2024 - Currently the serviceHist database and report update workflow looks like this:

     * serviceHist repo (working copy) is stored in
       /Users/dragon/Projects/serviceHist on Mac laptop

     * after modifying the fillTables.sql and fillHistory.sql files,
       recreate the database and 21 reports via this sequence of
       commands:

rm foo.db
sqlite foo.db
.read refresh.sql
.read reports.sql
.quit

     * test the new reports by pointing the web browser to the local
       file system with this URL:   

       http://localhost/~tom/serviceHist/

     * This should bring up the standard web interface to the reports
       which can them be browsed.


     * When data looks good and you are ready to put into production,
       perform git actions to update the repository:

git status
git add {list of files to be updated in the repo}
git push

     * Next, log into S3DF (ssh s3dflogin) as yourself.  Verify you
       have a valid kerberos ticket using the "klist" command.  If
       not, use "kinit" to get one.

     * Then move to the "descops" account: "ssh descops@iana" This
       should just work (without password prompt) if you are
       authorized to use this account.

     * Update the production serviceHist area:

cd /sdf/data/desc/public_html/serviceHist
git pull
rm foo.db
sqlite foo.db
.read refresh.sql
.read reports.sql
.quit

     * Test the new production database with this URL:

       https://s3df.slac.stanford.edu/data/desc/serviceHist/

voila.
