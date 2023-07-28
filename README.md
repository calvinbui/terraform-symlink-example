# Terraform Symlink Example

An example of how to keep multiple environments within Terraform DRY.

## Layout

- `/_common`: all files and folders in here are symlinked to the other relative folders
- `/dev`, `/stg`, `/prod`: our different environments
- `backend.tf`: define the remote backend for the environment
- `variables.tf`: variables that define the environment

```
└── service-01
    ├── _common
    ├── dev → the first environment
    │   ├── aws-instance.tf -> ../_common/aws-instance.tf
    │   ├── aws-vpc.tf -> ../_common/aws-vpc.tf
    │   ├── backend.tf
    │   ├── locals.tf -> ../_common/locals.tf
    │   ├── providers.tf -> ../_common/providers.tf
    │   ├── variables.tf
    │   └── versions.tf -> ../_common/versions.tf
    ├── stg → 2nd environment
    ├── prod → 3rd environment
    └── symlink.sh → run this script to symlink everything from _common to the other folders
```

## Adding another environment

1. Create another folder under `service-01`, such as `preprod`.
1. Create a `backend.tf` and `variables.tf` file under the `preprod` folder
1. Run `symlink.sh`

## Overwriting a linked file

See provided example in `/dev`

1. Delete the symlink file under the environment
1. Create a file with the same name
1. Running `symlink.sh` will not overwrite the file
