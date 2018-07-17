#!/bin/bash

docker run --name gateway-redis -p 6379:6379 --rm redis
