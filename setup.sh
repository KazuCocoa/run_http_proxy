# !/bin/sh

VERSION="v1.3.2"

mkdir -p elixir_pre
curl -LO https://github.com/elixir-lang/elixir/releases/download/${VERSION}/Precompiled.zip
unzip Precompiled.zip -d elixir_pre
