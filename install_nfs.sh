#!/bin/bash


target=$1


## install nfs client
install_nfs_client(){

    sudo apt-get update
    sudo apt-get install nfs-common

}



## install nfs server
install_nfs_server(){

   sudo apt-get update
   sudo apt install nfs-kernel-server

}



## test the connection




## main
main(){

    if [ ${target} == "client" ]; then
        echo "only install nfs client"
        install_nfs_client
    elif [ ${target} == "server" ]; then
        echo "only install nfs server"
        install_nfs_server
    elif [ ${target} == "all" ]; then
        echo "install nfs server and nfs client"
        install_nfs_client
        install_nfs_server
    else
	echo "Enter the wrong parameter"	    
    fi	
}
main



