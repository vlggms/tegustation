#!/bin/bash
set -euo pipefail

tools/deploy.sh ci_test
<<<<<<< HEAD
rm ci_test/*.dll
=======
>>>>>>> tgstation/master
mkdir ci_test/config

#test config
cp tools/ci/ci_config.txt ci_test/config/config.txt

cd ci_test
DreamDaemon tgstation.dmb -close -trusted -verbose -params "log-directory=ci"
cd ..
cat ci_test/data/logs/ci/clean_run.lk
