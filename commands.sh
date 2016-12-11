# Import Key pair into Amazon so that the ansible controller can log into tthe amazon instances. 
# Need to do ssh-keygen on ansible controller and then run the following command 
aws ec2 import-key-pair --key-name ansible --public-key-material file://~/.ssh/id_rsa.pub
