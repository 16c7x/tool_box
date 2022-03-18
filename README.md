# tool_box

This is a repository for useful Puppet tricks.

## Table of Contents

1. [Defered Functions](#Defered functions)

## Defered Functions

To use this, classify ```tool_box::deferred```.
When the catalog is applied to a target machine the function will extract a user account from /etc/passwd on the target machine and saver it to a file in /tmp.
