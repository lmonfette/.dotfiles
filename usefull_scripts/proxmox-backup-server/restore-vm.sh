#!/bin/bash

proxmox-backup-client restore <snapshot_id> <drive_id> /path/to/restored/backup/file.img --repository <user>@<realm>@<pbs_url>:<datastore_name> --keyfile /path/to/encryption/key.json --ns <namespace>

# ex
proxmox-backup-client restore vm/100/2026-05-18T15:57:59Z drive-scsi0.img /path/to/restored/backup/file.img --repository root@pam@<pbs_url>:<datastore_name> --keyfile /path/to/encryption/key.json --ns <namespace>
