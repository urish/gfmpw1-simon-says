#!/usr/bin/bash

# This script WILL be updated to the following:
# - Take command-line args for source project and target repo dir.
# - Check if there are any unstaged changes in the target; abort if so, unless --force?
# - Make backups of stuff?
# - Delete pre-existing versions of things that should be replaced (e.g. verilog/rtl/SUBDIR)
# - Put in READMEs for subprojects, and include source commit numbers
# - Copy in new versions of stuff that is a straight copy (verilog/rtl/SUBDIR, openlane/SUBDIR, ...?)
# - Patch things that can be "easily" patched (verilog/includes/*)
# - PERHAPS use templates to help build up other more complex files like user_project_wrapper, README, lvs_config.json
# - Otherwise remind the user what they might need to take care of manually, e.g. UPW/{config.json,macro.cfg}
# - Maybe offer to run test hardens of everything?
