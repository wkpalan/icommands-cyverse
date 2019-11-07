instance_name="icommands"
if [ -f "$instance_name.sif" ]
then
    sudo rm -r "$instance_name.sif"
fi

time sudo singularity -v build $instance_name.sif Singularity && \
sudo chown gokul:gokul $instance_name.sif