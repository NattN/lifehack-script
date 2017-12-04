#!/bin/bash

# Author: NattN
# Creation Date: Dec 4, 2017

if [ \"$(spctl --status)\" = \"assessments disabled\" ]
then
	echo currently disable, now changing to enable.
	sudo spctl --master-enable
	spctl --status
else
	echo currently enable, now changing to disable.
	sudo spctl --master-disable
	spctl --status
fi