#!/bin/bash

REMOTE_NAME="mctx"
REMOTE_HOST="zombie.minetexas.com"
REMOTE_PORT=25006
REMOTE_BACKUP_SCRIPT="/home/mctx/scripts/remote_map_backup.sh"

INSTALL_DIRECTORY=.

# Executes the backup script on the remote which echo's the compressed map location
remote_zip()
{
    to_echo=$(ssh -p ${REMOTE_PORT} ${REMOTE_NAME}@${REMOTE_HOST} sh ${REMOTE_BACKUP_SCRIPT})
    echo ${to_echo}
}

remote_rm_zip()
{
    ssh -p ${REMOTE_PORT} ${REMOTE_NAME}@${REMOTE_HOST} rm $1
}

# Downloads the compressed map to the specified directory
# download_zip <remote_file> <local_file>
download_zip()
{
    rsync -aIP -e "ssh -p ${REMOTE_PORT}" ${REMOTE_NAME}@${REMOTE_HOST}:$1 $2
}

# Unzips the compressed map to the INSTALL_DIRECTORY
# unpack_zip <local_file>
unpack_zip()
{
    cd ${INSTALL_DIRECTORY}
    unzip $1 > /dev/null
}

# Downloads the map from the remote host.
download_map()
{
    echo "Compressing map on the remote"
    map_remote_zip=$(remote_zip)

    map_dl_zip="$(mktemp -d)/ProjectZombieMap.zip"
    printf "Downloading compressed map to\n${map_dl_zip}\n"
    download_zip ${map_remote_zip} ${map_dl_zip}

    echo "Unpacking map"
    unpack_zip ${map_dl_zip}

    echo "Removing compressed map"
    rm ${map_dl_zip}

    echo "Removing remote compressed map"
    remote_rm_zip ${map_remote_zip}

    echo "Successfully updated your local map!"
}

download_map