# Cloud Computing
# - It provides
#   - On demand self service to get needed resource without human intervention
#   - Broad access network for accessing the resource from anywhere
#   - Resource pooling, customer doesn't need to care about the physical hardware infrastructure
#   - Rapid elasticity, resource can be added and removed as quickly as needed
#   - Measured service to ensure customer pay only for what they consume
# - It evolves from physical/colo where spaces are rented out in a shared facility to install physical hardware and 
#   then onward to virtualization of components such as servers, disks, etc. from the underlying physical hardware but
#   the underlying hardware still had to be maintained and guessed as to what amount is needed and then came Cloud

# Google Cloud Platform
# - It offers services such as
#   - Compute
#   - Storage
#   - Big Data
#   - Machine Learning
#   - Networking
#   - Operations and Tools
# - It offers
#   - IaaS (Infrastructure as a Service)
#       - It provides raw compute, storage, etc., resources
#       - Pay for what you allocate
#   - PaaS (Platform as a Service)
#       - It binds your application to underlying infrastructure as needed
#       - Pay for what you use
#   - Managed Services
#       - It is a specialized service that solves a particular problem without needing to worry about its infrastructure
#       - Pay for what you use
# - Several of its services uses open source projects as its base to provide interoperability and integrate seamlessly
#   with other cloud provider

# Region and Zone
# - Region is a geographical area
# - Zone is a deployable area for a GCP resource in a region
# - There are multiple zone in a single region
#   - They are independent from each other
#   - They have low latency connectivity between each other in the same region
# - Some GCP services allows placing resource in multi region, e.g., Cloud Storage where data will be stored in
#   redundantly in atleast two region

# Security
# - GCP encrypts data both at rest and in transit between services automatically

# Pricing
# - Certain GCP services are billed by the second
# - It provides discount for
#   - Sustained use of virtual machine over 25% of a month (the more you use the more discount you get)
#   - Committed use of virtual machine over a long period of time
#   - Preemtible use of virtual machine that can be interrupted
# - It allows customer to customize virtual machine type to allocate resource as needed by the application

# Billing
# - Budget can be set up for a billing account or a gcp project with a fixed amount or from a metric, Alert can then
#   be set up to notify when the limit is approaching
# - Quota is apply by default to prevent over consumption of resources but can be increased by requesting with
#   Google Cloud Support
#   - Rate Quota
#       - Limit API calls to a service over a period of time, e.g., 1000 GKE API calls in 100 seconds
#   - Allocation Quota
#       - Limit number of resource that can be allocated in a project, e.g., 5 VPC network in a project
# - Billing export and report can help view more detailed analysis