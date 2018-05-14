# MariaDB Galera Cluster

First let's creat a VPC and subnets.

```bash
$ cd default/vpc_subnets
$ terraform plan 
$ terraform apply
```

You should see something like this:

```bash
  vpc_id:                          "" => "vpc-15ba2f72"
aws_subnet.private-2: Creation complete after 1s (ID: subnet-64d0d203)
aws_subnet.private-3: Creation complete after 1s (ID: subnet-65d0d202)
aws_subnet.private-1: Creation complete after 1s (ID: subnet-efcfcd88)

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

Outputs:

private_subnets = [
    subnet-efcfcd88,
    subnet-64d0d203,
    subnet-65d0d202
]
```

Now you go to default directory:

```bash
$ cd ..
$ ../../../../../MariaDB-Galera_Cluster/default
```

And insert the values on 'vpc' and 'subnets' variables. 
Don't forget to replace 'zone', 'ssh-user' and 'ssh_key_file' according to your config.

```bash
$ terraform plan
$ terraform apply
```

I'll create the script.sh to set up thing with CentOS-7.
