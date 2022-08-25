#!/bin/sh

# Find the Unreal Mono install if it exists, we'll use that if possible
# Otherwise we fallback to mono and hope it exists
EPIC_MONO=""
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
if [ -f "D:\Program Files\Epic Games\UE_4.23\Engine\Build\BatchFiles\Mac\SetupMono.sh" ]; then
    pushd "D:\Program Files\Epic Games\UE_4.23\Engine\Build\BatchFiles\Mac"
	source SetupMono.sh
    popd
else
	EPIC_MONO="NOTE: It seems this $0 was built from another platform and copied here.\nNOTE: Was expecting to setup mono via: "'D:\Program Files\Epic Games\UE_4.23\Engine\Build\BatchFiles\Mac\SetupMono.sh';
=======
=======
>>>>>>> fda8c7a3c1b95cdc80bf9b403b66b4f946bd5f06
=======
>>>>>>> fda8c7a3c1b95cdc80bf9b403b66b4f946bd5f06
=======
>>>>>>> fda8c7a3c1b95cdc80bf9b403b66b4f946bd5f06
if [ -f "/Users/Shared/Epic Games/UE_4.23/Engine/Build/BatchFiles/Mac/SetupMono.sh" ]; then
    pushd "/Users/Shared/Epic Games/UE_4.23/Engine/Build/BatchFiles/Mac"
	source SetupMono.sh
    popd
else
	EPIC_MONO="NOTE: It seems this $0 was built from another platform and copied here.\nNOTE: Was expecting to setup mono via: "'/Users/Shared/Epic Games/UE_4.23/Engine/Build/BatchFiles/Mac/SetupMono.sh';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> fda8c7a3c1b95cdc80bf9b403b66b4f946bd5f06
=======
>>>>>>> fda8c7a3c1b95cdc80bf9b403b66b4f946bd5f06
=======
>>>>>>> fda8c7a3c1b95cdc80bf9b403b66b4f946bd5f06
=======
>>>>>>> fda8c7a3c1b95cdc80bf9b403b66b4f946bd5f06
fi

# Give some warning if mono isn't valid.
command -v mono > /dev/null 2>&1 || { echo "Mono is required to run this script. If it's already installed please make sure it exists on the path"; echo $EPIC_MONO; exit 1; }

# Set the current directory to where the script is being run from
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
pushd "$DIR"
mono HTML5LaunchHelper.exe
popd
