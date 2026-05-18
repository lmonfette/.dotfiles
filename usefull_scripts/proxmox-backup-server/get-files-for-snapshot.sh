#!/bin/bash

proxmox-backup-client files <snapshot_id> --repository <user>@<realm>@<pbs_url>:<datastore_name> --ns <namespace>

# ex
proxmox-backup-client files vm/100/2026-05-18T15:56:28Z --repository root@pam@<pbs_url>:<datastore_name> --ns <namespace>
