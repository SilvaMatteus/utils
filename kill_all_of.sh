#!/bin/bash
# Matteus Silva
# Kill processes that matches with the parameter

PROCESSES_TO_KILL=$1
ps aux | grep -ie $PROCESSES_TO_KILL | awk '{print $2}' | xargs kill -9
