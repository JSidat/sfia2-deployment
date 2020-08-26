#!/bin/bash

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

sudo visudo
   ~ jenkins ALL=(ALL) NOPASSWD: ALL