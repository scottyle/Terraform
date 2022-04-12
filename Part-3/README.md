Modules are containers for multiple resources that are used together. 

https://learn.hashicorp.com/tutorials/terraform/module?in=terraform/modules

Modules help;
    1. Help organize configuration - Modules make it easier to navigate, update configuration by keeping parts together.
    2. Encapsulate configuration - We can encapsulate configuration into distinct logical components 
    3. Re-use configuration - We can share modules with other teams or the general public 
    4. Provide consistency and ensure best practices - Modules help provide consistency in configurations 

The two modules we will use in this part is local module and remote module. 

A local module is a module that is loaded from the local file system and a remote module is one loaded from a remote source. 

Part – 3

    Write 2 Modules in Terraform.

    Local Module – in Ubuntu(or amazon linux) – Setup a webserver

    Remote module – Setup VPC (this should be hosted in your github account)