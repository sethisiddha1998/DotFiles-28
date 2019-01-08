#!/bin/bash

# Get id of touchpad and the id of the field corresponding to
# tapping to click
id=`xinput list | grep "Touchpad" | cut -d'=' -f2 | cut -d'[' -f1`
tap_to_click_id=`xinput list-props $id | \
                      grep "Tapping Enabled (" \
                      | cut -d'(' -f2 | cut -d')' -f1`


# Enabling natural scrolling
# Set the property to true
xinput --set-prop $id $tap_to_click_id 1

id=`xinput list | grep "Touchpad" | cut -d'=' -f2 | cut -d'[' -f1`
natural_scrolling_id=`xinput list-props $id | \
                      grep "Natural Scrolling Enabled (" \
                      | cut -d'(' -f2 | cut -d')' -f1`

# Set the property to true
xinput --set-prop $id $natural_scrolling_id 1
