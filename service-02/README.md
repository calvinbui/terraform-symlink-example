This demonstrates an example where we use folders in the `_common` folder.

This did work in Terraform 1.2.9


## Terraform 1.5.4

Currently this is broken as of Terraform 1.5.4. 

Running a plan/apply, returns:

```
~/git/terraform-symlink-example/service-02/dev$ tf plan
Running plan in the remote backend. Output will stream here. Pressing Ctrl-C
will stop streaming the logs, but will not stop the plan running remotely.

Preparing the remote plan...

╷
│ Error: Failed to upload configuration files: failed to get relative path for file "/home/user/git/terraform-symlink-example/service-02/_common/extra-files": Rel: can't make /home/user/git/terraform-symlink-example/service-02/_common/extra-files relative to ../_common/extra-files
│ 
│ The configured "remote" backend encountered an unexpected error. Sometimes this is caused by network
│ connection problems, in which case you could retry the command. If the issue persists please open a
│ support ticket to get help resolving the problem.
╵
```

## Terraform 1.2.9 - Last working version of Terraform

This worked previously in Terraform 1.2.9

```
~/git/terraform-symlink-example/service-02/dev$ tfenv use 1.2.9
Switching default version to v1.2.9
Default version (when not overridden by .terraform-version or TFENV_TERRAFORM_VERSION) is now: 1.2.9

~/git/terraform-symlink-example/service-02/dev$ tf plan
Running plan in the remote backend. Output will stream here. Pressing Ctrl-C
will stop streaming the logs, but will not stop the plan running remotely.

Preparing the remote plan...

To view this run in a browser, visit:
(url redacted)

Waiting for the plan to start...

Terraform v1.2.9
on linux_amd64
Initializing plugins and modules...

Changes to Outputs:
  + scripts = [
      + "bar.sh",
      + "foo.sh",
    ]

You can apply this plan to save these new output values to the Terraform
state, without changing any real infrastructure.

```
