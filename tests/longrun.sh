#!/bin/bash
set -eu
(while sleep 590; do echo keep it up!; done) &
"$@"
