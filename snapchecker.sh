#!/bin/csh
set str="nothing"
while( $str != "completed" )

               
              aws ec2 describe-snapshots --snapshot-id  "$1" | awk '{print $8}' > file1.txt 
              set  str=`tail -n 1 file1.txt`
end

