<img width="1331" height="371" alt="image" src="https://github.com/user-attachments/assets/42fed7c4-e75e-4aeb-9e8c-b682f26e73e7" />This is created as a part of my Ansible practice.
I started learning Ansible by working on automation of SQL Server Patching in windows Servers.
For this I have configured my Lab using Oracle VM Virtualbox Manager, using which I created 3 windows VMs(SQL1, SQL2 and SQL3) with SQL2 acts as domain controller, standalone SQL Server as Centralized DSR and Ansible control node under WSL Ubuntu. 
SQL1 and SQL3 are configured with Windows cluster and enabled with Always on SQL Servers without listener. 
SQL2 is Domain controller along with Ansible control node which is installed in WSL Ubuntu. Created forest domain named mylab.vb.org and added all these servers to it. 
Initial practice is with SQL Standalone and Always on(2 replicas) patching automation.

Instructions:
1 3 1 -- Normal simple with all chars

unlock oracle vms -- left alt+right ctrl+del -- cancel the host task manager and you will see the prompt in the vm.. do twice or thrice if not working in first attempt

Commands:
install - ansible-playbook -f 3 aoag_patching.yaml
uninstall - ansible-playbook -f 3 sql_patch_uninstall.yaml

