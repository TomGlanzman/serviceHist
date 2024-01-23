/* AllNames.sql - This is a DbVisualizer Pro specific SQL snippet which produces a file containing
   		  a list of all names and IDs from shared DESC user database (config-prod). 
                  Use the makeAllNames.sh script to run this query.

		  Success assumes that you already have a DbVisualizer
		  profile established that contains the credentials to
		  access the DESC Oracle database.

*/
@export on;
@export set filename="./AllNames.txt" appendfile="clear" CsvIncludeColumnHeader=false CsvColumnDelimiter=",";
select distinct M.MEMIDNUM, M.FIRSTNAME, M.LASTNAME from UM_MEMBER M
        join UM_PROJECT_MEMBERS PM on (M.MEMIDNUM=PM.MEMIDNUM)
	order by M.LASTNAME;
@export off;
