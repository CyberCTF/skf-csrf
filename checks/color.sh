#!/bin/sh
# Admin/admin logs in and gets the colour form, with no CSRF token.
set -e
H=http://web:5000
P=$(curl -fsS -d "username=admin&password=admin" "$H/login")
echo "$P" | grep -q 'name="color"'
! echo "$P" | grep -qi 'type="hidden"'
