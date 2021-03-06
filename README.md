Mantle Experiments
==================

This repository has our experiment configurations and deployment scripts.

Install
-------

1. Setup passwordless SSH and sudo

2. Install [Docker](https://docs.docker.com/engine/installation/).

Quickstart
----------

1. Start an [Ansible](https://www.ansible.com/how-ansible-works)) container:

   ```bash
   $ cd experiments; ./ansible.sh
   ```

2. Choose an experiment and setup the cluster inventory:

   ```bash
   [EXPERIMENT_MASTER] cd spill_evenly
   [EXPERIMENT_MASTER] vim inventory/*
   ```

3. Start the experiment!

   ```
   [EXPERIMENT_MASTER] ./run.sh
   ```

Results and Logs
----------------

Inside the experiment directory there is a results and logs directory. These
will be overwritten everytime you run an experiment... so you should try to
commit the results along with the entire experiment directory before running a
new job. This gives you a history of different experiments and helps us
understand how small tweaks affect results.

Troubleshooting
---------------

Check to make sure everything installed smoothly:

   ```bash
   # Should show no running images
   $ docker ps 
   ```

Requirements
------------

Docker >= 1.10: FUSE mounts inside containers cannot be exposed wihtout "mount
propogation".

EOF 
