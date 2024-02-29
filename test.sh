#!/bin/bash

git tag  v2.0.4
git push origin v2.0.4

# Define a string variable with a value
StringVal="kindnet multus vlanindex cluster-capi-kind  local-path-provisioner nephio-workload-cluster"

# Iterate the string variable using for loop
for val in $StringVal; do
 echo $val
 git tag infra/capi/$val/v2.0.4
 git push origin infra/capi/$val/v2.0.4
done

StringVal1="configsync workload-crds"

# Iterate the string variable using for loop
for val in $StringVal1; do
 echo $val
 git tag nephio/core/$val/v2.0.4
 git push origin nephio/core/$val/v2.0.4
done

StringVal2="repository rootsync metallb"

# Iterate the string variable using for loop
for val in $StringVal2; do
 echo $val
 git tag distros/sandbox/$val/v2.0.4
 git push origin distros/sandbox/$val/v2.0.4
done


StringVal3="rootsync"

# Iterate the string variable using for loop
for val in $StringVal3; do
 echo $val
 git tag nephio/optional/$val/v2.0.4
 git push origin nephio/optional/$val/v2.0.4
done
