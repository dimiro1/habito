#!/usr/bin/env sh

os=$(uname)

if [ "$os" = "Darwin" ]; then
  # MacOS
  bin/pocketbase_darwin_arm64 serve \
    --dir pb_data \
    --hooksDir pb_hooks \
    --migrationsDir pb_migrations \
    --publicDir pb_public \
    --http habito.localhost:8090
elif [ "$os" = "Linux" ]; then
  # Linux
  bin/bin/pocketbase_linux_amd64 serve \
    --dir pb_data \
    --hooksDir pb_hooks \
    --migrationsDir pb_migrations \
    --publicDir pb_public \
    --http TODO # production endpoint to be defined
else
  # Unknown
  echo "Unknown operating system. Please run this script on MacOS or Linux."
  exit 1
fi