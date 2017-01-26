#!/bin/bash

docker restart $(cat $PWD/INFO | head -n 1)
