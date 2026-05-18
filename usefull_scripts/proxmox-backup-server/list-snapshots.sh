#!/bin/bash

proxmox-backup-client snapshots --repository <user>@<realm>@<pbs_url>:<datastore_name> --ns <namespace>

# ex
proxmox-backup-client snapshots --repository root@pam@<pbs_url>:<datastore_name> --ns <namespace>
