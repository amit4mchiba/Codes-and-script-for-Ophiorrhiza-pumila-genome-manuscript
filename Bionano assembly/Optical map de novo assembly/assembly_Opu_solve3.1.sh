# This script was used to create bionano de novo assembly for O. pumila. Here, we used O. pumila canu best assembly to derive the process. 
# Acquired Bionano optical maps sequencing datasets were first filtered using length cutoff as 150 Kb and were used to derive Bionano de novo genome assembly.
# We used Canu-assembly as the reference genome to guide de novo genome assembly and generated the “.cmap” file with length cutoff as 20 Kb and at least five restriction digestion sites. Following commands were used to run
# Bionano Solve (v 3.1) for reference guided genome assembly pipelinepython
#!/bin/bash

pipelineCL.py -U -T 60 -j 60 -N 8 -f 0.3 -i 5 -y -b Molecules.bnx \
-l Output_Pumila \
-t ./RefAligner/6700.6902rel \
-a ./RefAligner/6700.6902rel/optArguments_nonhaplotype_irys_Amit_4thMay2018.xml \
-r Canu-assembly_BSSSI_20kb_5labels.cmap


# Please refere to Bionano Solve 3.1 manual for more details related to the commands and different parameters used. The optArguments_nonhaplotype_irys_Amit_4thMay2018.xml and .cmp file is 
# provided in this resource
