#!/bin/bash



pamac update

pamac build ocenaudio


pamac build google-chrome

# =============================================================================
# date 28 Jul 2021 brave has removed from the main repo
# I've got an error on the last update just because of brave keyring so I
# remove brave then install brave-bin
pamac install brave-bin
