This is created as a part of my Ansible practice. \n
I started learning Ansible by working on automation of SQL Server Patching in windows Servers. \n
For this I have configured my Lab using Oracle VM Virtualbox Manager, using which I created 3 windows VMs(SQL1, SQL2 and SQL3) with SQL2 acts as domain controller, standalone SQL Server as Centralized DSR and Ansible control node under WSL Ubuntu. 
SQL1 and SQL3 are configured with Windows cluster and enabled with Always on SQL Servers without listener. 
SQL2 is Domain controller along with Ansible control node which is installed in WSL Ubuntu. Created forest domain named mylab.vb.org and added all these servers to it. 
Initial practice is with SQL Standalone and Always on(2 replicas) patching automation.
