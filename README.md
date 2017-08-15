# giteasy
make github easier to use, add several commands into a script

Usage

giteasy.sh $1 $2 $3 $4 $5

$1 is the char for function chose, "new" for init a new project, others for update exists one<br>
$2 is the name of private key name of ssh<br>
$3 is the project folder on local machine<br>
$4 is user of github <br>
$5 is the project name in github<br>

if update an exists project, just input 

giteasy.sh $1 $2 $3 

before use this script to init a new project, please create it on github first, 
and make sure your public key of ssh has already been imported in github.
