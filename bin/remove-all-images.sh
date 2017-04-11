#!/bin/bash

# Copyright 2017 Crunchy Data Solutions, Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permi -fssions and
# limitations under the License.

for i in \
postgres-gis prometheus promgateway grafana dns collect pgbadger pgpool \
watch backup postgres pgbouncer pgadmin4 vacuum dba 
do
	docker rmi -f  crunchydata/crunchy-$i:$CCP_IMAGE_TAG
	docker rmi -f  crunchy-$i
#	docker rmi -f  registry.crunchydata.openshift.com/jeff-project/crunchy-$i:$CCP_IMAGE_TAG
done
exit

