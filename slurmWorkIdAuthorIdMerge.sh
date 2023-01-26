#!/bin/bash

TEMPFILE=./slurmfile.slurm
echo "processing authorID and workId merge"
echo "#!/bin/bash" > $TEMPFILE
echo "#SBATCH -p large" >> $TEMPFILE
echo "#SBATCH -J CreateOA" >> $TEMPFILE
echo "#SBATCH -t 14-00:00" >> $TEMPFILE
echo "#SBATCH -n 32" >> $TEMPFILE
echo "#SBATCH --wckey=marxnfs1" >> $TEMPFILE
echo "" >> $TEMPFILE
echo "python3 aaWorkIdAuthorIdMerge.py" >> $TEMPFILE
sbatch $TEMPFILE
sleep 0.1
