    1  mkdir -p 2025.5 && cd 2025.5
    2  wget -c -t 0 https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    3  bash Miniconda3-latest-Linux-x86_64.sh
    4  source /home/dengyj/miniconda3/bin/activate
    5  conda init
    6  conda env create --name qiime2-amplicon-2025.4 --file https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/2025.4/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml
    7  conda activate qiime2-amplicon-2025.4
    8  conda info --envs
    9  qiime --help
   10  conda deactivate
   11  conda activate qiime-amplicon-2025.4
   12  conda activate qiime2-amplicon-2025.4
   13  conda info
   14  conda deactivate
   15  free -h
   16  cd /mnt
   17  ls
   18  conda create -n kingfisher -c conda-forge -c bioconda kingfisher
   19  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch/
   20  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/menpo/
   21  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda/
   22  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/msys2/
   23  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
   24  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
   25  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
   26  conda config --set show_channel_urls yes
   27  conda config --set ssl_verify false
   28  conda create -n kingfisher -c conda-forge -c bioconda kingfisher
   29  ls -a
   30  mkdir Biosofts
   31  cd Biosofts/
   32  wget
   33  wget https://d3gcli72yxqn2z.cloudfront.net/downloads/connect/latest/bin/ibm-aspera-connect_4.2.19.956-HEAD_linux_x86_64.tar.gz
   34  ls
   35  tar zxvf ibm-aspera-connect_4.2.19.956-HEAD_linux_x86_64.tar.gz 
   36  ./ibm-aspera-connect_4.2.19.956-HEAD_linux_x86_64.sh 
   37  cd ~
   38  ls -a
   39  cd .aspera
   40  ls
   41  cd connect/
   42  ls
   43  cd bin
   44  ls
   45  ./ascp -h
   46  pwd
   47  cd 
   48  echo 'export PATH=~/.aspera/connect/bin:$PATH' >>~/.bashrc
   49  source ~/.bashrc
   50  ascp -h
   51  nano ~/.aspera/connect/etc/asperaweb_id_dsa.openssh
   52  ls ~/.aspera/connect/etc/
   53  ascp --version
   54  mkdir BacMet
   55  cd BacMet
   56  wegt http://bacmet.biomedicine.gu.se/download/BacMet2_EXP_database.fasta
   57  wget  http://bacmet.biomedicine.gu.se/download/BacMet2_EXP_database.fasta  
   58  wget http://bacmet.biomedicine.gu.se/download/BacMet2_predicted_database.fasta.gz
   59  wget http://bacmet.biomedicine.gu.se/download/BacMet2_EXP.753.mapping.txt
   60  wget http://bacmet.biomedicine.gu.se/download/BacMet2_PRE.155512.mapping.txt
   61  conda install -c bioconda diamond
   62  which diamond
   63  cd /
   64  cd ~
   65  sudo apt install sra-toolkit
   66  cd Biosofts$ wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/3.4.1/setup-apt.sh
   67  cd Biosofts/
   68  ls
   69  less setup-apt.sh 
   70  sudo bash setup-apt.sh 
   71  source /etc/profile.d/sra-tools.sh
   72  prefetch -h
   73  cd ~
   74  mkdir data
   75  cd data
   76  prefecth ERR13857399
   77  prefetch ERR13857399
   78  which fastq-dump
   79  fastq-dump --stdout -X 2 SRR390728
   80  cd ~
   81  fastq-dump --stdout -X 2 SRR390728
   82  cd Biosofts
   83  ls
   84  source /etc/profile.d/sra-tools.sh
   85  fastq-dump --version
   86  cd
   87  ls
   88  fastq-dump --split-files SRR26361709
   89  prefetch SRR26361709
   90  vdb-config -i
   91  prefetch SRR17510933
   92  fasterq-dump SRR17510933 -e 4 -p
   93  prefetch -h
   94  prefetch SRR6232298
   95  ascp -P 33001 -k 1 -l 200m -T -i ~/.aspera/connect/etc/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/SRR620/004/SRR6208854/SRR6208854 ./ 
   96  ascp -P 33001 -k 1 -l 200m -T -i ~/.aspera/connect/etc/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:/vol1/srr/SRR620/004/SRR6208854/SRR6208854 ./  
   97  ascp -P 33001 -k 1 -l 200m -T -i ~/.aspera/connect/etc/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:/vol1/srr/SRR620/004/SRR6208854 ./   
   98  cd ..
   99  which diamond
  100  cd 
  101  ll
  102  mv SRR6208854 SRR6208854.sra
  103  ll
  104  fastq-dump --split-files SRR6232298/SRR6232298.sra
  105  fastq-dump --split-files SRR6208854/SRR6208854.sra
  106  which SRR6208854.sra
  107  ls
  108  fastq-dump --split-files SRR6208854.sra
  109  ls -lh SRR6208854*.fastq
  110  fastp -i SRR6208854_1.fastq -I SRR6208854_2.fastq   -o clean_1.fastq -O clean_2.fastq   --html QC_report.html
  111  fastp -i SRR6208854_1.fastq -I SRR6208854_2.fastq   -o clean_1.fastq -O clean_2.fastq   --html QC_report.html
  112  conda install -c bioconda fastp -y
  113  fastp -i SRR6208854_1.fastq -I SRR6208854_2.fastq   -o clean_1.fastq -O clean_2.fastq   --html QC_report.html
  114  fastp -i SRR6208854_1.fastq -o clean_1.fastq --html QC_report.html
  115  megahit -r clean_1.fastq -o assembly
  116  conda install -c bioconda megahit -y
  117  megahit -r clean_1.fastq -o assembly
  118  conda install -c bioconda prodigal -y
  119  prodigal -i assembly/final.contigs.fa -a genes.faa -d genes.fna -f gff -o genes.gff
  120  cd data
  121  gunzip BacMet2_predicted_database.fasta.gz
  122  wget http://bacmet.biomedicine.gu.se/download/BacMet2_EXP_database.fasta
  123  wget http://bacmet.biomedicine.gu.se/download/BacMet2_predicted_database.fasta.gz
  124  wget http://bacmet.biomedicine.gu.se/download/BacMet2_EXP.753.mapping.txt
  125  wget http://bacmet.biomedicine.gu.se/download/BacMet2_PRE.155512.mapping.txt
  126  gunzip BacMet2_predicted_database.fasta.gz
  127  # 实验验证库（推荐优先用这个）
  128  diamond makedb --in BacMet2_EXP_database.fasta -d BacMet2_EXP
  129  # 预测抗性库（可选）
  130  diamond makedb --in BacMet2_predicted_database.fasta -d BacMet2_PRE
  131  cd ..
  132  diamond blastp -q genes.faa -d data/BacMet2_EXP -o bacmet_resistance.tsv --outfmt 6 qseqid sseqid pident evalue bitscore stitle --evalue 1e-5 --max-target-seqs 1 --threads 4
  133  ls
  134  cp bacmet_resistance.tsv /mnt/e/Desktop/
  135  cp bacmet_resistance.tsv /mnt/e/
  136  ls
  137  ll
  138  ls
  139  mkdir sample && mv bacmet_resistance.tsv genes.gff SRR6208854.sra clean_1.fastq genes.faa QC_report.html SRR6208854_1.fastq genes.fna sample/
  140  ls
  141  cd 2025.5
  142  ls
  143  cd data
  144  cd ..
  145  cd data
  146  ls
  147  cd ..
  148  cd SRR26361709
  149  ls
  150  ..
  151  cd ..
  152  rm -rf SRR26361709
  153  ls
  154  rm -rf SRR17510933
  155  cd assembly
  156  ls
  157  ..
  158  cd ..
  159  mv assembly sample/
  160  ls
  161  cd Biosofts
  162  ls
  163  mkdir aspera && mv ibm-aspera-connect_4.2.19.956-HEAD_linux_x86_64.sh setup-apt.sh ibm-aspera-connect_4.2.19.956-HEAD_linux_x86_64.tar.gz aspera/
  164  ls
  165  cd ..
  166  ls
  167  cd BacMet
  168  ls
  169  cd..
  170  cd ..
  171  cd data
  172  ls
  173  cd ..
  174  rm -rf BacMet
  175  mv data BacMet_data
  176  ls
  177  mv fastp.json stder_EXP stdout_EXP sample/
  178  ls 
  179  hostname -I
  180  ip a
  181  sudo apt update
  182  whoami
  183  mkdir Ox2_genome
  184  ls
  185  sudo apt install openssh-server -y
  186  sudo systemctl start ssh
  187  cp -r /mnt/i/deng\ yingjie/data/rawdata /home/Ox2_genome/
  188  cp -r /mnt/i/"deng yingjie"/data/rawdata /home/Ox2_genome/
  189  cp -r /mnt/e/Desktop/rawdata_genome /home/Ox2_genome/
  190  cp -r /mnt/e/rawdata_genome /home/Ox2_genome/
  191  sudo cp -r /mnt/e/rawdata_genome /home/Ox2_genome/
  192  cd  /home/Ox2_genome/
  193  cd ..
  194  ls /home/Ox2_genome/
  195  ls
  196  cd ..
  197  ls
  198  cd /home/Ox2_genome
  199  fastp -i SRR6208854_1.fastq -I SRR6208854_2.fastq >   -o clean_1.fastq -O clean_2.fastq \
  200  fastp -i L1MLC1604097-Ox_2.R1.raw.fastq -I L1MLC1604097-Ox_2.R2.raw.fastq \ -o clean_1.fastq -O clean_2.fastq \ --html QC_report.html
  201  fastp -i L1MLC1604097-Ox_2.R1.raw.fastq -I L1MLC1604097-Ox_2.R2.raw.fastq -o clean_1.fastq -O clean_2.fastq --html QC_report.html
  202  sudo fastp -i L1MLC1604097-Ox_2.R1.raw.fastq -I L1MLC1604097-Ox_2.R2.raw.fastq > -o clean_1.fastq -O clean_2.fastq > --html QC_report.html
  203  sudo fastp -i L1MLC1604097-Ox_2.R1.raw.fastq -I L1MLC1604097-Ox_2.R2.raw.fastq -o clean_1.fastq -O clean_2.fastq --html QC_report.html
  204  sudo chmod 777 /home/Ox2_genome
  205  fastp -i L1MLC1604097-Ox_2.R1.raw.fastq -I L1MLC1604097-Ox_2.R2.raw.fastq -o clean_1.fastq -O clean_2.fastq --html QC_report.html
  206  megahit -1 clean_1.fastq -2 clean_2.fastq -o assembly_clean
  207  prodigal -i assembly/final.contigs.fa -d genes.fna -a genes.faa -o gene_prediction.gbk
  208  ls assembly_clean/
  209  prodigal -i assembly_clean/final.contigs.fa -d genes.fna -a genes.faa -o gene_prediction.gbk
  210  diamond blastp > -q genes.faa > -d data/BacMet2_EXP > -o bacmet_resistance.tsv > --outfmt 6 qseqid sseqid pident evalue bitscore stitle > --evalue 1e-5 > --max-target-seqs 1 > --threads 4
  211  diamond blastp -q genes.faa -d /home/BacMET_data/BacMet2_EXP -o bacmet_resistance.tsv --outfmt 6 qseqid sseqid pident evalue bitscore stitle --evalue 1e-5 --max-target-seqs 1 --threads 4
  212  ls /home/BacMET_data
  213  diamond blastp -q genes.faa -d /home/BacMET_data/BacMet2_EXP -o bacmet_resistance.tsv --outfmt 6 qseqid sseqid pident evalue bitscore stitle --evalue 1e-5 --max-target-seqs 1 \
  214  diamond blastp -q genes.faa -d /home/BacMet_data/BacMet2_EXP -o bacmet_resistance.tsv --outfmt 6 qseqid sseqid pident evalue bitscore stitle --evalue 1e-5 --max-target-seqs 1 --threads 4
  215  ls /home/
  216  /home/dengyj/BacMet_data
  217  ls
  218  cp bacmet_resistance.tsv /mnt/e/
  219  cat bacmet_resistance.tsv | tr '\t' ',' > bacmet_resistance.csv
  220  cp bacmet_resistance.tsv /mnt/e/
  221  cp bacmet_resistance.csv /mnt/e/
  222  awk '$3>=80 && $4<=1e-5' bacmet_resistance.tsv > bacmet_high_confident.tsv
  223  cat bacmet_resistance.tsv | tr '\t' ',' > bacmet_resistance.csv
  224  grep -iE 'metal|copper|zinc|cadmium|arsenic|lead|mercury|nickel' bacmet_resistance.tsv > mrg_resistance.txt
  225  ls
  226  cp mrg_resistance.txt /mnt/e/
  227  ls
  228  grep -iE 'metal|copper|zinc|cadmium|arsenic|lead|mercury|nickel'  bacmet_high_confident.tsv > mrg_resistace.txt
  229  cat  bacmet_high_confident.tsv | tr '\t' ',' >  bacmet_high_confident.csv
  230  cp  bacmet_high_confident.csv /mnt/e/
  231  cp  mrg_resistace.txt /mnt/e/
  232  ls
  233  # 创建分类文件夹
  234  mkdir 01_raw_data 02_clean_data 03_assembly 04_gene_pred 05_results 06_reports
  235  # 移动原始测序数据
  236  mv *.raw.fastq 01_raw_data/
  237  # 移动质控后clean数据
  238  mv clean_*.fastq 02_clean_data/
  239  # 移动组装结果
  240  mv assembly_clean 03_assembly/
  241  # 移动基因预测文件
  242  mv genes.* gene_prediction.gbk 04_gene_pred/
  243  # 移动比对结果（tsv csv txt）
  244  mv bacmet_* mrg_* 05_results/
  245  # 移动报告文件
  246  mv QC_report.html fastp.json 06_reports/
  247  ls
  248  df -h
  249  cd ..
  250  ls
  251  ls -lh
  252  cd /mnt/f
  253  mkdir -p bio_project
  254  cd bio_project
  255  mv /home/Ox2_genome /mnt/f/
  256  cd ..
  257  cd
  258  cd..
  259  cd ..
  260  mv /home/Ox2_genome /mnt/f/
  261  cp -r /home/Ox2_genome /mnt/f/bio_project/
  262  cd /mnt/f/bio_project/
  263  ls
  264  cd Ox2_genome/
  265  LS
  266  ls
  267  rm -rf /home/Ox2_genome
  268  sudo rm -rf /home/Ox2_genome
  269  ls /home
  270  sudo cp -r /home/dengyj /mnt/f/bio_project/
  271  cd home/
  272  ls home/
  273  ls /home
  274  ls /home/dengyj
  275  cp -r /home/dengyj/2025.5 /home/dengyj/BacMet_data /home/dengyj/Biosofts /home/dengyj/Ox2_genome /home/dengyj/sample /mnt/f/bio_project/
  276  cd ..
  277  ls
  278  cd dengyj
  279  ls
  280  cd BacMet_data
  281  ls
  282  cd 
  283  cd /mnt/f/bio_project/
  284  ls
  285  rm -rf dengyj
  286  ls
  287  cd /home
  288  ls
  289  cd dengyj
  290  ls
  291  rm -rf 2025.5 BacMet_data Biosofts Ox2_genome fasterq.tmp* sample
  292  ls
  293  cd /mnt/f/bio_project/
  294  mkdir QC_process
  295  cd QC_process/
  296  mkdir -p rawdata clean_data qc report log
  297  vim fastp_pipeline.sh
  298  chmod +x fastp_pipeline.sh
  299  ./fastp_pipeline.sh
  300  ls
  301  cd ..
  302  mkdir -p databases && cd databases
  303  vim build_all_db.sh
  304  chmod +x build_all_db.sh
  305  ./build_all_db.sh
  306  wget https://bcb.unl.edu/dbCAN2/download/Databases/V12/CAZyDB.07262023.fa
  307  diamond makedb --in CAZyDB.07262023.fa -d CAZy
  308  wget -O CAZy.fa https://bcb.unl.edu/dbCAN2/download/Databases/V12/CAZyDB.07262023.fa
  309  diamond makedb --in CAZy.fa -d CAZy
  310  git clone https://github.com/qichao1984/ncyc.git
  311  diamond makedb --in ncyc/ncycDB.fasta -d NCycDB
  312  ls
  313  ls ncyc/
  314  diamond makedb --in ncyc/data/ncycDB.fasta -d NCycDB
  315  ls
  316  cd /mnt/f/bio_project/
  317  rm -rf databases/*
  318  ls
  319  cd databases
  320  ls
  321  git clone https://github.com/qichao1984/ncyc.git
  322  ls
  323  ls ncyc
  324  ls ncyc/data
  325  cd ncyc/data
  326  gunzip NCyc_95.faa.gz
  327  cd ../..
  328  ls
  329  ls nayc
  330  ls ncyc
  331  ls ncyc/data
  332  diamond makedb --in ncyc/data/NCyc_95.faa -d NCycDB
  333  git clone https://github.com/qichao1984/SCycDB.git
  334  ls
  335  ls SCycDB/
  336  cd SCycDB/
  337  LS
  338  ls
  339  cat README.md 
  340  cat SCycDB_2020Mar.z01 SCycDB_2020Mar.z02 SCycDB_2020Mar.z03 SCycDB_2020Mar.z04 SCycDB_2020Mar.zip > full.zip
  341  ls
  342  unzip full.zip
  343  sudo apt update
  344  sudo apt install -y unzip
  345  unzip full.zip
  346  ls
  347  diamond makedb --in SCycDB_2020Mar.faa -d SCycDB
  348  ls
  349  mv SCycDB.dmnd ../
  350  cd ..
  351  ls
  352  git clone https://github.com/zengjiaxiong/phosphorus-cycling-db.git
  353  ls
  354  mkdir PCycDB
  355  wget -O PCycDB.fasta https://raw.githubusercontent.com/zengjiaxiong/phosphorus-cycling-db/main/PCycDB.fasta
  356  git clone https://github.com/zengjiaxiong/phosphorus-cycling-db.git
  357  git clone https://github.com/ZengJiaxiong/Phosphorus-cycling-database.git
  358  ls
  359  cd Phosphorus-cycling-database
  360  ls
  361  cat README.md 
  362  wget -c https://github.com/ZengJiaxiong/Phosphorus-cycling-database/releases/download/untagged-5a0f44fdf33412c5d1d3/PCycDBv1.1.faa
  363  ls
  364  diamond makedb --in PCycDBv1.1.faa -d PCycDB
  365  ls
  366  mv PCycDB.dmnd ../
  367  cd ..
  368  ls
  369  wget https://bcb.unl.edu/dbCAN2/download/Databases/V14/CAZyDB.07102025.fa
  370  wget https://bcb.unl.edu/dbCAN2/download/Databases/V14/dbCAN-HMMdb-V14.txt
  371  mv dbCAN-HMMdb-V14.txt dbCAN.txt
  372  hmmpress dbCAN.txt
  373  sudo apt install hmmer
  374  ls
  375  rm -f dbCAN.txt*
  376  rm -f CAZyDB*
  377  ls
  378  wget -O dbCAN-HMMdb-V14.txt https://bcb.unl.edu/dbCAN2/download/Databases/V14/dbCAN-HMMdb-V14.txt
  379  mv dbCAN-HMMdb-V14.txt dbCAN.txt
  380  hmmpress dbCAN.txt
  381  rm -f dbCAN.txt   # 如果你确认它不是你手动创建的纯文本文件
  382  ls
  383  wget https://github.com/linnabrown/run_dbCAN/raw/master/dbCAN-HMMdb-V14.txt
  384  wget https://bcb.unl.edu/dbCAN2/download/Databases/dbCAN-old@UGA/dbCAN-HMMdb-V14.txt
  385  head -n 5 dbCAN-HMMdb-V14.txt
  386  ls
  387  rm -f dbCAN-HMMdb-V14.txt 
  388  ls
  389  wget -O dbCAN-HMMdb-V14.txt "https://bcb.unl.edu/dbCAN2/download/Databases/V14/dbCAN-HMMdb-V14.txt" --no-check-certificate
  390  head -n 5 dbCAN-HMMdb-V14.txt
  391  rm dbCAN-HMMdb-V14.txt
  392  wget https://github.com/linnabrown/run_dbCAN/raw/master/dbCAN-HMMdb-V14.txt
  393  ls
  394  wget https://dbcan.s3.us-west-2.amazonaws.com/db_v5-2_9-13-2025/dbCAN-HMMdb-V14.txt
  395  wget https://bcb.unl.edu/dbCAN2/download/run_dbCAN_database_total/CAZy.dmnd
  396  wget https://bcb.unl.edu/dbCAN2/download/run_dbCAN_database_total/dbCAN_sub.hmm
  397  hmmpress dbCAN_sub.hmm
  398  ls
  399  rm -f CAZy* dbCAN*
  400  ls
  401  conda install -c bioconda run_dbcan
  402  run_dbcan database --db_dir db
  403  git clone https://github.com/bcb-unl/run_dbcan.git
  404  run_dbcan database --db_dir db --aws_s3
  405  cd run_dbcan
  406  ls
  407  cd ..
  408  cd run_dbcan
  409  pip install .
  410  run_dbcan --help
  411  run_dbcan database --db_dir db --aws_s3
  412  ls
  413  cd db
  414  ls
  415  cd ../..
  416  ls
  417  cd run_dbcan/
  418  run_dbcan database --db_dir ../db --no-cgc
  419  ls
  420  cd ..
  421  ls
  422  cd db
  423  cd ~/miniconda3/envs/run_dbcan/db/
  424  cd ..
  425  ls
  426  cd run_dbcan/
  427  ls
  428  cd envs
  429  cd dbcan
  430  cd ..
  431  cd dbcan
  432  cd ..
  433  cat README.md 
  434  cd /mnt/f/bio_project/databases
  435  run_dbcan database --db_dir db --aws_s3 --no-cgc
  436  ls
  437  cd db
  438  cd ..
  439  run_dbcan database --db_dir . --aws_s3 --no-cgc
  440  cd /mnt/f/bio_project/databases/run_dbcan/db
  441  ls
  442  cd /mnt/f/bio_project/databases
  443  rm -rf run_dbcan db
  444  ls
  445  cd ..
  446  ls
  447  cd Ox2_genome/
  448  LS
  449  ls
  450  cd 01_raw_data/
  451  ls
  452  cd ../..
  453  QC_process/
  454  cd QC_process/
  455  ls
  456  cd rawdata/
  457  ls
  458  cp -r /mnt/f/bio_project/Ox2_genome/01_raw_data/* /mnt/f/bio_project/QC_process/rawdata/
  459  ls /mnt/f/bio_project/QC_process/rawdata
  460  cd ..
  461  bash fastp_pipeline.sh
  462  ls
  463  cd qc
  464  ls
  465  /mnt/f/bio_project/QC_process/clean_data/
  466  cd /mnt/f/bio_project/QC_process/clean_data/
  467  ls
  468  conda install -c bioconda fastqc multiqc -y
  469  conda create -n qc -y
  470  conda activate qc
  471  conda install -c bioconda fastqc multiqc fastp -y
  472  fastqc --version
  473  multiqc --version
  474  fastp --version
  475  fastqc --version
  476  multiqc --version
  477  conda deactivate
  478  cd /mnt/f/bio_project/QC_process
  479  bash fastp_pipeline.sh
  480  conda activate qc
  481  cd /mnt/f/bio_project/QC_process
  482  bash fastp_pipeline.sh
  483  nano fastp_pipeline.sh
  484  cd /mnt/f/bio_project/QC_process
  485  > fastp_pipeline.sh
  486  nano fastp_pipeline.sh
  487  bash fastp_pipeline.sh
  488  cd /mnt/f/bio_project/QC_process
  489  > fastp_pipeline.sh
  490  nano fastp_pipeline.sh
  491  bash fastp_pipeline.sh
  492  nano fastp_pipeline.sh
  493  bash fastp_pipeline.sh
  494  nano fastp_pipeline.sh
  495  free -h
  496  cd /mnt/f/bio_project
  497  mkdir -p assembly
  498  cd assembly
  499  spades.py -1 /mnt/f/bio_project/QC_process/clean_data/*_R1_clean.fastq           -2 /mnt/f/bio_project/QC_process/clean_data/*_R2_clean.fastq           -o Ox2_assembly -t 4 -m 4
  500  sudo apt install spades
  501  conda deactivate
  502  spades.py -1 /mnt/f/bio_project/QC_process/clean_data/*_R1_clean.fastq           -2 /mnt/f/bio_project/QC_process/clean_data/*_R2_clean.fastq           -o Ox2_assembly -t 4 -m 4
  503  cd  /mnt/f/bio_project/QC_process/clean_data/
  504  ls
  505  cd /mnt/f/bio_project/assembly
  506  spades.py -1 /mnt/f/bio_project/QC_process/clean_data/L1MLC1604097-Ox_2.R1.raw.fastq_clean_R1.fastq           -2 /mnt/f/bio_project/QC_process/clean_data/L1MLC1604097-Ox_2.R1.raw.fastq_clean_R2.fastq           -o Ox2_assembly -t 4 -m 4
  507  rm -rf /mnt/f/bio_project/assembly/Ox2_assembly
  508  spades.py -1 /mnt/f/bio_project/QC_process/clean_data/L1MLC1604097-Ox_2.R1.raw.fastq_clean_R1.fastq           -2 /mnt/f/bio_project/QC_process/clean_data/L1MLC1604097-Ox_2.R1.raw.fastq_clean_R2.fastq           -o Ox2_assembly -t 4 -m 4
  509  ls
  510  rm -rf /mnt/f/bio_project/assembly/Ox2_assembly
  511  ls
  512  spades.py -1 /mnt/f/bio_project/QC_process/clean_data/L1MLC1604097-Ox_2.R1.raw.fastq_clean_R1.fastq           -2 /mnt/f/bio_project/QC_process/clean_data/L1MLC1604097-Ox_2.R1.raw.fastq_clean_R2.fastq           -o genome_assembly -t 4 -m 4
  513  rm -rf /mnt/f/bio_project/assembly/genome_assembly
  514  megahit -1 /mnt/f/bio_project/QC_process/clean_data/L1MLC1604097-Ox_2.R1.raw.fastq_clean_R1.fastq         -2 /mnt/f/bio_project/QC_process/clean_data/L1MLC1604097-Ox_2.R1.raw.fastq_clean_R2.fastq         -o megahit_assembly -t 4
  515  prodigal -i megahit_assembly/final.contigs.fa          -d genes.fna          -a proteins.faa          -o gene_prediction.log
  516  cd ..
  517  ls
  518  cd databases/
  519  ls
  520  cd /mnt/f/bio_project/assembly/megahit_assembly
  521  diamond blastp -q proteins.faa -d /mnt/f/bio_project/databases/NCycDB.dmnd -o N_annotation.txt -e 1e-5 -p 4 --outfmt 6
  522  ls
  523  prodigal -i final.contigs.fa -d genes.fna -a proteins.faa -o prodigal.log
  524  diamond blastp -q proteins.faa -d /mnt/f/bio_project/databases/NCycDB.dmnd -o N_annotation.txt -e 1e-5 -p 4 --outfmt 6
  525  diamond blastp -q proteins.faa -d /mnt/f/bio_project/databases/PCycDB.dmnd -o P_annotation.txt -e 1e-5 -p 4 --outfmt 6
  526  diamond blastp -q proteins.faa -d /mnt/f/bio_project/databases/SCycDB.dmnd -o S_annotation.txt -e 1e-5 -p 4 --outfmt 6
  527  ls
  528  # 氮循环筛选
  529  awk '$3>=50 && $11<=1e-5' N_annotation.txt > N_filtered.txt
  530  # 磷循环筛选
  531  awk '$3>=50 && $11<=1e-5' P_annotation.txt > P_filtered.txt
  532  # 硫循环筛选
  533  awk '$3>=50 && $11<=1e-5' S_annotation.txt > S_filtered.txt
  534  wc -l N_filtered.txt
  535  wc -l P_filtered.txt
  536  wc -l S_filtered.txt
  537  # 以氮为例，去冗余保留最优
  538  sort -k1,1 -k11,11n -k3,3nr N_filtered.txt | awk '!a[$1]++' > N_best.txt
  539  # 以氮为例，去冗余保留最优
  540  sort -k1,1 -k11,11n -k3,3nr P_filtered.txt | awk '!a[$1]++' > P_best.txt
  541  # 以氮为例，去冗余保留最优
  542  sort -k1,1 -k11,11n -k3,3nr S_filtered.txt | awk '!a[$1]++' > S_best.txt
  543  wc -l N_best.txt
  544  wc -l P_best.txt
  545  wc -l S_best.txt
  546  cat N_best.txt P_best.txt S_best.txt > All_NPS_annotation.txt
  547  echo -e "GeneID\tDB_GeneID\tIdentity\tLength\tMismatch\tGap\tQstart\tQend\tSstart\tSend\tEvalue\tBitScore" > header.txt
  548  cat header.txt All_NPS_annotation.txt > NPS_anno_final.txt
  549  cp /mnt/f/bio_project/assembly/megahit_assembly/NPS_anno_final.txt /mnt/e/
  550  awk 'NR==FNR{a[$2];next} /^>/ {split($0,arr," "); id=arr[1]; sub(/^>/,"",id); if(id in a) {print arr[2]}}' N_best.txt <(zcat /mnt/f/bio_project/databases/ncyc/NCycDB.fasta.gz) | sort | uniq -c | sort -nr > N_function_stats.txt
  551  awk 'NR==FNR{a[$2];next} /^>/ {split($0,arr," "); id=arr[1]; gsub(/^>/,"",id); if(id in a) print arr[2]}' N_best.txt /mnt/f/bio_project/databases/NCycDB.fasta | sort | uniq -c | sort -nr > N_function_stats.txt
  552  cd /mnt/f/bio_project/
  553  ls
  554  cd databases/
  555  ls
  556  awk 'NR==FNR{a[$2];next} /^>/ {split($0,arr," "); id=arr[1]; gsub(/^>/,"",id); if(id in a) print arr[2]}' N_best.txt /mnt/f/bio_project/databases/NCycDB.dmnd/NCycDB.fasta | sort | uniq -c | sort -nr > N_function_stats.txt
  557  cd /mnt/f/bio_project/assembly/megahit_assembly
  558  awk 'NR==FNR{a[$2];next} /^>/ {split($0,arr," "); id=arr[1]; gsub(/^>/,"",id); if(id in a) print arr[2]}' N_best.txt /mnt/f/bio_project/databases/NCycDB.dmnd/NCycDB.fasta | sort | uniq -c | sort -nr > N_function_stats.txt
  559  awk 'NR==FNR{a[$2];next} /^>/ {split($0,arr," "); gsub(/^>/,"",arr[1]); if(arr[1] in a) print arr[2]}' N_best.txt /mnt/f/bio_project/databases/ncyc/NCycDB.fasta | sort | uniq -c | sort -nr > N_function_stats.txt
  560  cd /mnt/f/bio_project/databases/ncyc/
  561  ls
  562  cd data
  563  ls
  564  cd ../..
  565  ls
  566  cd Phosphorus-cycling-database/
  567  LS
  568  ls
  569  cd ../..
  570  cd databases/
  571  cd SCycDB/
  572  ls
  573  cd /mnt/f/bio_project/assembly/megahit_assembly
  574  awk 'NR==FNR{a[$2];next} /^>/ {split($0,arr," "); gsub(/^>/,"",arr[1]); if(arr[1] in a) print arr[2]}' N_best.txt /mnt/f/bio_project/databases/ncyc/data/NCyc_95.faa | sort | uniq -c | sort -nr > N_function_stats.txt
  575  awk 'NR==FNR{a[$2];next} /^>/ {split($0,arr," "); gsub(/^>/,"",arr[1]); if(arr[1] in a) print arr[2]}' P_best.txt /mnt/f/bio_project/databases/Phosphorus-cycling-database/PCycDBv1.1.faa | sort | uniq -c | sort -nr > P_function_stats.txt
  576  awk 'NR==FNR{a[$2];next} /^>/ {split($0,arr," "); gsub(/^>/,"",arr[1]); if(arr[1] in a) print arr[2]}' S_best.txt /mnt/f/bio_project/databases/SCycDB/SCycDB_2020Mar.faa | sort | uniq -c | sort -nr > S_function_stats.txt
  577  echo -e "Count\tFunction\tType" > All_NPS_stats.txt
  578  awk '{print $1"\t"$2"\tNitrogen"}' N_function_stats.txt >> All_NPS_stats.txt
  579  awk '{print $1"\t"$2"\tPhosphorus"}' P_function_stats.txt >> All_NPS_stats.txt
  580  awk '{print $1"\t"$2"\tSulfur"}' S_function_stats.txt >> All_NPS_stats.txt
  581  ls
  582  cp All_NPS_stats.txt /mnt/e/
  583  # 以氮为例，输出未匹配到库注释的基因ID
  584  awk 'NR==FNR{a[$2]=1;next}/^>/ {gsub(/^>/,"",$1);delete a[$1]}' /mnt/f/bio_project/assembly/megahit_assembly/N_best.txt /mnt/f/bio_project/databases/ncyc/data/NCyc_95.faa
  585  awk 'NR==FNR{a[$2]=1;next}/^>/ {gsub(/^>/,"",$1);delete a[$1]}' N_best.txt /mnt/f/bio_project/databases/ncyc/data/NCyc_95.faa
  586  wc -l N_best.txt
  587  awk '{sum+=$1}END{print sum}' N_function_stats.txt
  588  wc -l N_best.txt
  589  awk '{sum+=$1}END{print sum}' N_function_stats.txt
  590  wc -l P_best.txt
  591  awk '{sum+=$1}END{print sum}' P_function_stats.txt
  592  wc -l S_best.txt
  593  awk '{sum+=$1}END{print sum}' S_function_stats.txtwc -l N_best.txt
  594  awk '{sum+=$1}END{print sum}' N_function_stats.txt
  595  wc -l P_best.txt
  596  awk '{sum+=$1}END{print sum}' P_function_stats.txt
  597  wc -l S_best.txt
  598  awk '{sum+=$1}END{print sum}' S_function_stats.txt
  599  ls
  600  cd e/
  601  ls
  602  cd /mnt/f/bio_project
  603  ls
  604  git init
  606  git add .
  608  git log --oneline
  611  git add .
  612  touch README.md
  613  git add README.md
  614  git commit -m "first commit"
  616  git branch -m main
  626  echo 'print("hello world")' > hello.py
  627  git add .
  628  ls
  629  (base) dengyj@PC-20200620MAIO:/mnt/f/bio_project$ ls
  630  git add hello.py
  631  git commit -m "测试单独保存hello.py"
  633  git status
  634  history > analysis_commands.sh
  635  git add analysis_commands.sh
  636  ls
  637  git status
  638  git commit -m "基因组N库比较 自动保存运行代码"
  640  rm analysis_commands.sh
  641  git reset --mixed HEAD^
