#!/bin/bash -e
#
# Copyright 2014 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This script tests the indexpack binary. It requires the jq command (≥ 1.4).

indexpack=campfire-out/bin/kythe/go/platform/tools/indexpack
viewindex=campfire-out/bin/kythe/go/platform/tools/viewindex
test_kindex=kythe/testdata/test.kindex

kindex_contents() {
  $viewindex --files "$1" | jq -c -S .
}

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT ERR INT

$indexpack --quiet --to_archive "$tmp/archive" $test_kindex >/dev/null
$indexpack --quiet --from_archive "$tmp/archive" "$tmp/idx"

kindex_file="$(find "$tmp/idx" -name "*.kindex")"

result="$(kindex_contents "$kindex_file")"
expected="$(kindex_contents $test_kindex)"

if [[ ! "$result" == "$expected" ]]; then
  echo "ERROR: expected $expected; received $result" >&2
  exit 1
fi
