# terraform-assignment-iac
Includes Terraform assignments

# main-initial - Commands
    - terraform init
    - terraform apply
    - docker ps
    - terraform destroy

# Build Infrastrucure
Some do's you should follow when working with Terrafrom templates/files.

    1. terraform init
        - To initilize the directory

    2. terraform fmt
        - To formats the documents. In out case `main.tf`.

    3. terraform validate
        - To check the configuration is syntactically valid and internally consistent

# Creating the infrastructure

    1. terraform apply
        - To apply the configuration

    2. terrafor show

3. terraform state list

# Updating the infrastrucuture
    - we changed/updated the ami in the current configuration file and updated it and the used terraform apply.

    - Updated the tags section and changed/updated the name of the ec2 instance

# Destroying/Deleting the configuration
    1. terraform destroy
        - terminates resources managed by your Terraform project

# Varibles
    - use of variables in terraform.
    - We have created a file name `variables.tf`.
    - Then we have replace s the name tage with `var.instace_name`.

        - terraform apply to apply the changes in the configuration

# Output
    - Displays the decalred output during the execution of the terraform template.


# Store remote state
    - Migrating the state to the Terraform cloud.

    # Terraform login
        - use command `terraform login` to login into the Terraform cloud.

    - Use the below command in `main.tf` to setup Terraform cloud. It will take you to the web browser, generate a token and paste it into the terminal.

    - Then re-initialize the configuration using `terraform init`

        cloud {
    organization = "organization-name"
    workspaces {
      name = "learn-tfc-aws"
    }
  }

    - Note: Create a organization in Terraform 

    - use the organization name int he above command you have just crated.

    - then `terraform apply`