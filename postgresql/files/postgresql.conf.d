
# PostgreSQL's config directory
PGDATA="/etc/postgresql"

# PostgreSQL User
PGUSER="pgsql"

# PostgreSQL Group
PGGROUP="pgsql"

# Extra options to run postmaster with
# -N is the maximal number of client connections
# -B is the number of shared buffers and has to be at least 2x the value for -N
# Please read the man-page to postmaster for more options. Many of these options
# can be set directly in the configuration-file.
PGOPTS="-N 40 -B 80"

# Which port and socket to bind PostgreSQL
PGPORT="5432"

# How long to wait for server to start in seconds
START_TIMEOUT=10

# NICE_QUIT ignores new connections and wait for clients to disconnect from
# server before shutting down. NICE_TIMEOUT in seconds determines how long to
# wait for this to succeed.
NICE_TIMEOUT=60

# Forecfully disconnect clients from server and shut down. This is performed
# after NICE_QUIT. Terminated client connections have their open transactions
# rolled back.
# Set RUDE_QUIT to "NO" to disable. RUDE_TIMEOUT in seconds.
RUDE_QUIT="YES"
RUDE_TIMEOUT=30

# If the server still fails to shutdown, you can force it to quit by setting
# this to YES and a recover-run will execute on the next startup.
# Set FORCE_QUIT to "YES" to enable. FORCE_TIMEOUT in seconds.
FORCE_QUIT="NO"
FORCE_TIMEOUT=2

# Pass extra environment variables. If you have to export environment variables
# for the database process, this can be done here.
# Don't forget to escape quotes.
#PG_EXTRA_ENV="PGPASSFILE=\"/path/to/.pgpass\""

##############################################################################
#
# The following values should not be arbitrarily changed.
#
# The initscript also uses these variables to inform PostgreSQL where to find
# its data directory and configuration files.
#
##############################################################################

# Where the data directory is located/to be created
DATA_DIR="/var/lib/pgsql/data"

# Additional options to pass to initdb.
# See 'man initdb' for available options.
PG_INITDB_OPTS="--encoding=UTF8"

