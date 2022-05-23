#!/usr/bin/env bash
set -ex

ver=(NATS_SERVER 2.8.3)

(
	cd "${ver[1]}/alpine3.15"
	docker build --tag nats:2.8.3-alpine3.15 .
)

(
	cd "${ver[1]}/scratch"
	docker build --tag nats:2.8.3-scratch .
)
