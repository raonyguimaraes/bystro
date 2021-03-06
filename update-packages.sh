# Update go packages;
# TODO: combine go packages
cdir=$(pwd)

git pull origin

# Don't use -v because aws instance can become overwhelmed with the logs
printf "\n\nInstalling bystro-utils/parse library\n\n"
cd ~/go/src/github.com/akotlar/bystro-utils/parse
git pull origin
go install -a

printf "\n\nInstalling bystro-stats library\n\n"
cd ~/go/src/github.com/akotlar/bystro-stats
git pull origin
go install -a

printf "\n\nInstalling bystro-vcf library\n\n"
cd ~/go/src/github.com/akotlar/bystro-vcf/
git pull origin
go install -a

printf "\n\nInstalling bystro-snp library\n\n"
cd ../bystro-snp
git pull origin
go install -a

cd $cdir