#!/bin/bash

git tag -d v2.0.4
git push origin :refs/tags/v2.0.4

# Define a string variable with a value
StringVal="kindnet multus vlanindex cluster-capi-kind  local-path-provisioner nephio-workload-cluster"

# Iterate the string variable using for loop
for val in $StringVal; do
 echo $val
 git tag -d infra/capi/$val/v2.0.4
 git push origin :infra/capi/$val/v2.0.4
done

StringVal1="configsync workload-crds"

# Iterate the string variable using for loop
for val in $StringVal1; do
 echo $val
 git tag -d nephio/core/$val/v2.0.4
 git push origin :nephio/core/$val/v2.0.4
done

StringVal2="repository rootsync metallb"

# Iterate the string variable using for loop
for val in $StringVal2; do
 echo $val
 git tag -d distros/sandbox/$val/v2.0.4
 git push origin :distros/sandbox/$val/v2.0.4
done


StringVal3="rootsync"

# Iterate the string variable using for loop
for val in $StringVal3; do
 echo $val
 git tag -d nephio/optional/$val/v2.0.4
 git push origin :nephio/optional/$val/v2.0.4
done

StringVal4="pkg-example-hss-bp pkg-example-mme-bp sdcore4g-operator pkg-example-pcrf-bp pkg-example-spgwc-bp pkg-example-config4g-bp sdcore4g-cp sdcore4g upf"

# Iterate the string variable using for loop
for val in $StringVal4; do
 echo $val
 git tag -d workloads/sdcore4g/$val/v2.0.4
 git push origin :workloads/sdcore4g/$val/v2.0.4
done



