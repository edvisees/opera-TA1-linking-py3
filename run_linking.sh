#!/bin/bash

[ $# -lt 3 ] && { echo "Usage: $0 csr_dir out_dir en|ru|uk|es|img index_dir [country_code1] [country_code2] ..."; exit 1; }

csr_dir=$(readlink -ve $1) || exit 1
out_dir=$(readlink -f $2)
lang=$3
index_dir=$(readlink -ve $4) || exit 1

cd $(dirname $0)

mkdir -p $out_dir
source activate linking
set -x

shift 4
python linking.py --run_csr --$lang --in_dir $csr_dir --out_dir $out_dir --index-dir $index_dir --country-codes "${@}"
exit $?
