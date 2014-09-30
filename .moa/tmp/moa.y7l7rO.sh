#!/bin/bash -el

mkdir 10.index
cd 10.index
moa new bwa_index -t 'create a demo database'
moa set input_fasta="${MOABASE}/share/test/test.fasta"
moa set prefix=testDB
moa run
cd ../
mkdir 20.align
cd 20.align
ls -l 
moa new bwa_aln -t 'align demo reads'
moa set db=${PWD%/*}/10.index/testDB
moa set input=${MOABASE}/share/test/*.fq
moa run
echo 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

moa show
echo 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

moa files 
echo 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

[[ -s reads_1.sai ]]

