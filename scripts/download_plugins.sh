#!/bin/bash

PLUGIN_DIRECTORY=../plugins

SpigotVersion="1.9.4"
CrackShot="https://dev.bukkit.org/projects/crackshot/files/885752/download",
EssentialsX="https://dev.bukkit.org/projects/essentialsx/files/923210/download",
MythicMobs="https://dev.bukkit.org/projects/mythicmobs/files/949285/download",
LibsDisguises="https://www.spigotmc.org/resources/libs-disguises.81/download?version=102223",
MythicLib="https://dev.bukkit.org/projects/mythiclib/files/947146/download",
PermissionsEx="https://dev.bukkit.org/projects/permissionsex/files/909154/download",
PhatLoots="https://github.com/Codisimus/PhatLoots/releases/download/v4.2.3/PhatLoots.jar",
ProtocolLib="http://ci.dmulloy2.net/job/ProtocolLib/lastStableBuild/artifact/modules/ProtocolLib/target/ProtocolLib.jar",
VoxelSniper="https://dev.bukkit.org/projects/voxelsniper/files/912511/download",
WorldEdit="https://dev.bukkit.org/projects/worldedit/files/956525",
WorldGuard="https://dev.bukkit.org/projects/worldguard/files/920773"

echo "Downloading Crackshot"
wget -nv -O ${PLUGIN_DIRECTORY}/Crackshot.jar ${CrackShot}

echo "Downloading EssentialsX"
wget -nv -O ${PLUGIN_DIRECTORY}/EssentialsX.jar ${EssentialsX}

echo "Downloading MythicMobs"
wget -nv -O ${PLUGIN_DIRECTORY}/MythicMobs.jar ${MythicMobs}

echo "Downloading LibsDisguises"
wget -nv -O ${PLUGIN_DIRECTORY}/LibsDisguises.jar ${LibsDisguises}

echo "Downloading MythicLib"
wget -nv -O ${PLUGIN_DIRECTORY}/MythicLib.jar ${MythicLib}

echo "Downloading PermissionsEx"
wget -nv -O ${PLUGIN_DIRECTORY}/PermissionsEx.jar ${PermissionsEx}

echo "Downloading PhatLoots"
wget -nv -O ${PLUGIN_DIRECTORY}/PhatLoots.jar ${PhatLoots}

echo "Downloading ProtocolLib"
wget -nv -O ${PLUGIN_DIRECTORY}/ProtocolLib.jar ${ProtocolLib}

echo "Downloading VoxelSniper"
wget -nv -O ${PLUGIN_DIRECTORY}/VoxelSniper.jar ${VoxelSniper}

echo "Downloading WorldEdit"
wget -nv -O ${PLUGIN_DIRECTORY}/WorldEdit.jar ${WorldEdit}

echo "Downloading WorldGuard"
wget -nv -O ${PLUGIN_DIRECTORY}/WorldGuard.jar ${WorldGuard}