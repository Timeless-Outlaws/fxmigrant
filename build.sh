rm -rf dist

mkdir -p dist/fxmigrant

pushd server
dotnet publish -c Release
popd

cp fxmanifest.lua dist/fxmigrant/
cp helper.lua dist/fxmigrant/

mkdir -p dist/fxmigrant/server/bin/Release/netstandard2.0/publish/

cp -a server/bin/Release/netstandard2.0/publish dist/fxmigrant/server/bin/Release/netstandard2.0/
