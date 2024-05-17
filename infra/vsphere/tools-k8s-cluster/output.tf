output "k8s_haproxy1_name" {
    value = try(module.tools-k8s-haproxy1.vm_name, null)
}

output "k8s_haproxy1_ipv4_address" {
    value = try(module.tools-k8s-haproxy1.vm_ipAddresses, null)
}

# output "k8s_haproxy2_name" {
#     value = try(module.tools-k8s-haproxy2.vm_name, null)
# }
# output "k8s_haproxy2_ipv4_address" {
#     value = try(module.tools-k8s-haproxy2.vm_ipAddresses, null)
# }

output "k8s_cp1_name" {
    value = try(module.tools-k8s-cp1.vm_name, null)
}

output "k8s_cp1_ipv4_address" {
    value = try(module.tools-k8s-cp1.vm_ipAddresses, null)
}

output "k8s_cp2_name" {
    value = try(module.tools-k8s-cp2.vm_name, null)
}

output "k8s_cp2_ipv4_address" {
    value = try(module.tools-k8s-cp2.vm_ipAddresses, null)
}

# output "k8s_cp3_name" {
#     value = try(module.tools-k8s-cp3.vm_name, null)
# }

# output "k8s_cp3_ipv4_address" {
#     value = try(module.tools-k8s-cp3.vm_ipAddresses, null)
# }

output "k8s_etcd1_name" {
    value = try(module.tools-k8s-etcd1.vm_name, null)
}

output "k8s_etcd1_ipv4_address" {
    value = try(module.tools-k8s-etcd1.vm_ipAddresses, null)
}


# output "k8s_etcd2_ipv4_address" {
#     value = try(module.tools-k8s-etcd2.vm_ipAddresses, null)
# }

# output "k8s_etcd3_name" {
#     value = try(module.tools-k8s-etcd3.vm_name, null)
# }

# output "k8s_etcd3_ipv4_address" {
#     value = try(module.tools-k8s-etcd3.vm_ipAddresses, null)
# }

output "k8s_worker1_name" {
    value = try(module.tools-k8s-node1.vm_name, null)
}

output "k8s_worker1_ipv4_address" {
    value = try(module.tools-k8s-node1.vm_ipAddresses, null)
}

output "k8s_worker2_name" {
    value = try(module.tools-k8s-node2.vm_name, null)
}

output "k8s_worker2_ipv4_address" {
    value = try(module.tools-k8s-node2.vm_ipAddresses, null)
}

# output "k8s_worker3_name" {
#     value = try(module.tools-k8s-node3.vm_name, null)
# }

# output "k8s_worker3_ipv4_address" {
#     value = try(module.tools-k8s-node3.vm_ipAddresses, null)
# }

# output "k8s_worker4_name" {
#     value = try(module.tools-k8s-node4.vm_name, null)
# }

# output "k8s_worker4_ipv4_address" {
#     value = try(module.tools-k8s-node4.vm_ipAddresses, null)
# }

# output "k8s_worker5_name" {
#     value = try(module.tools-k8s-node5.vm_name, null)
# }

# output "k8s_worker5_ipv4_address" {
#     value = try(module.tools-k8s-node5.vm_ipAddresses, null)
# }

# output "k8s_worker6_name" {
#     value = try(module.tools-k8s-node6.vm_name, null)
# }

# output "k8s_worker6_ipv4_address" {
#     value = try(module.tools-k8s-node6.vm_ipAddresses, null)
# }

# output "k8s_worker7_name" {
#     value = try(module.tools-k8s-node7.vm_name, null)
# }

# output "k8s_worker7_ipv4_address" {
#     value = try(module.tools-k8s-node7.vm_ipAddresses, null)
# }

# output "k8s_worker8_name" {
#     value = try(module.tools-k8s-node8.vm_name, null)
# }

# output "k8s_worker8_ipv4_address" {
#     value = try(module.tools-k8s-node8.vm_ipAddresses, null)
# }

# output "k8s_worker9_name" {
#     value = try(module.tools-k8s-node9.vm_name, null)
# }

# output "k8s_worker9_ipv4_address" {
#     value = try(module.tools-k8s-node9.vm_ipAddresses, null)
# }

