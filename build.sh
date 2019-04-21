instance_name="icommands"
if [ -f "$instance_name.simg" ]
then
    sudo rm -r "$instance_name.simg"
fi

time sudo singularity -v build $instance_name.simg Singularity && \
sudo chown gokul:gokul $instance_name.simg