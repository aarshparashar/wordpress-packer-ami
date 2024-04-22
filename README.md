# README

## Description

This repository contains files to create an AWS AMI using Packer and provision it with a WordPress setup using Nginx.

## Files

- `ami.pkr.hcl`: Packer configuration file specifying the AMI creation settings.
- `app.sh`: Bash script for provisioning the AMI with WordPress and Nginx setup.

## Usage

1. Clone this repository to your local machine.
2. Ensure you have Packer installed.
3. Update `ami.pkr.hcl` and `app.sh` with your specific configuration if needed.
4. Run `packer build ami.pkr.hcl` to start the AMI creation process.
5. Once the AMI is created, you can use it to launch new instances.

## Notes

- The Packer configuration specifies an Ubuntu AMI (`ami-0960ab670c8bb45f3`) in the `us-east-2` region with instance type `t3a.small`.
- The `app.sh` script installs Nginx, PHP, and other necessary packages, downloads WordPress, configures Nginx, and installs the CloudWatch agent for monitoring.

**Note:** Please ensure you have the necessary permissions and understand the costs associated with AWS services before running these scripts.
