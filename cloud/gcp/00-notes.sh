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

# GCP Interaction
# - It offers four main ways to works with GCP
#   - Cloud Platform Console and Cloud Shell (Web UI)
#   - Cloud SDK (Command Line Tools)
#   - Cloud Console Mobile App
#   - Rest-based API

# Cloud SDK
# - It includes command line tools for interacting with GCP
# - It includes, gcloud, gsutil, bq, etc.

# Cloud Shell
# - It is a temporarty virtual machine with Cloud SDK pre-installed

# GCP API
# - GCP services offers Rest-based API for interacting with them, e.g., Cloud Console uses these APIs behind the scene
# - It must be enabled first and it is also associated with daily quotas and rate limits
# - GCP services and resources also has name in URLs format to work with

# GCP Organization
# - It is the way that GCP resources are organized
# - It organized GCP resources in a hierarchical structure
# - It consists of
#   - Organization which is at the root
#   - Folder which is a collection of folder and project
#   - Project which is a collection of GCP resource

# Google Cloud Identity and Access Management (IAM)
# - It is used to control who can do what based on the least privilege principle (have only the needed permission)
# - It consists of three main part
#   - WHO (what user)
#       - It can be
#           - Google account
#           - Google group
#           - Service account
#               - It provide identity for server-to-server interaction in a project
#               - It is identified by an email address and used cryptographic keys for authentication
#               - It can also be viewed as a resource
#           - G-Suite
#           - Cloud Identity Domain
#   - WHAT (what needs to be done)
#       - It is defined by a role which has a set of permissions
#       - There are three types fo role
#           - Primitive
#               - It is broad and affect all resources in the GCP project, e.g., Owner, Editor, Viewer roles
#           - Pre-defined
#               - It provide more fine-grained permissions over particular GCP service
#           - Custom
#               - It provide customised set of permissions to suite user needs
#               - It can't be used at a folder level
#   - WHICH (what resource to operate on)

# Security
# - GCP is responsible for lower-level infrastructure security such as hardware, storage and encryption,
#   network security, etc.
# - User is responsile for higher-level security such as application security, access management, etc., although GCP
#   provides tools such as IAM for helping the user

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

# Cloud Launcher (formerly Marketplace)
# - It is pre-packaged, ready to deploy solutions
# - It helps with pre-configuring softwares, virtual machines, storage and network settings but it can still be modify
#   as needed before launch
# - Once deployed, if the base image of package gets updated, it doesn't affect the already deployed instances and has
#   to be done manually

# Compute Engine
# - It lets you configure and run virtual machine on GCP
# - It lets you configure vCPUs, memory, GPUs, storage disks, image (OS and softwares), etc.
# - It also lets you take disk snapshot of VM for backup, migration, etc.

# Compute Engine Option
# - VM machine type is pre-defined but it can be customised by configuring desired vCPUs, memory, etc., combination
#   to suite your application needs
# - VM metadata can be associated for describing itself which is in the form of key-value pair
# - VM storage disk type includes
#   - Persistent disk
#       - It persists data when VM terminates
#       - It is a network storage
#   - Local SSD
#       - It doesn't persist data when VM terminates
# - VM image is avaialble to choose from or your own image can be supplied as well
#   - Startup script can also be provided to execute on VM startup

# Creating a VM
# - VM_NAME is a hostname which can be used to connect to within the network
#   - Its full format is VM_NAME.ZONE_NAME.c.PROJECT_ID.internal
gcloud compute zones list                   # List all the available zones for compute engine
gcloud config set compute/zone ZONE_NAME    # Set zone to work with
gcloud compute instances create VM_NAME     # Creating a VM (many command options exist to tune VM)

# Virtual Private Cloud (VPC)
# - It helps with GCP resources connectivity
#   - Connect them with each other or to the internet
#   - Isolate them from one another
# - It provides
#   - Segment network
#       - Subnets can be in any region worldwide
#       - Subnets can span multiple zones in a region
#       - Subnets can be increased dynamically without affecting the already configured virtual machines
#   - Firewall rules to restrict traffic
#       - It control incoming and outgoing traffic
#       - It can uses metadata tag from VM to construct rule
#   - Forward traffic
#       - It uses a route table to forward traffic within a network, across subnet, between zones
# - VPC network is contained in a GCP project
#   - For connecting to another network within GCP
#       - VPC Peering
#           - It helps with inter-connecting VPC network in another project
#       - Shared VPC
#           - It helps with sharing a network or individual subnets with another project
#           - It integrates with IAM to control access
#   - For connection to another network outside of GCP
#       - VPN
#           - It helps connect over the internet using IPsec protocol
#           - It uses Cloud Router to exchange routes between GCP network and other network using
#             Border Gateway Protocol, e.g., by adding a new subnet in GCP, the other network will get route to it
#             automatically
#       - Direct Peering
#           - Private connection between GCP and other network
#           - It works by putting router in the same public data center as Google point of presence to exchange
#             traffic
#       - Carrier Peering
#           - It is similiar to direct peering but connection is provided through partner who is already present in the
#             public data center
#       - Dedicated Interconnect
#           - It is a direct private connection to Google with guarantee of up to 99.9% SLA if network topologies meet
#             specification

# Cloud Load Balancing
# - It is a fully distributed, managed service that helps with distributing incoming traffic from the internet 
#   to internal back-end services
# - It provides a single anycast IP address (many machine having same IP address) to front end all the request from
#   any region
# - It selects traffic based on back-end health, network condition, etc.
# - It has several type of load balancer
#   - Global HTTP(s)
#       - It load balanced against Layer 7 HTTP(s) protocols based on URL
#   - Global SSL Proxy
#       - It load balanced against Layer 4 TCP (any non-http) with SSL protocols
#       - It works only on specific port number
#   - Global TCP Proxy
#       - It load balanced against Layer 4 TCP (any-non-http) with no SSL protocols
#       - It works only on specific port number
#   - Regional
#       - It load balanced against Layer 4 TCP or UDP
#       - It works on any port number
#   - Regional Internal
#       - It load balanced against traffic within the GCP
#       - It accepts request on internal GCP IP address

# Cloud DNS
# - It helps translate internet hostnames to IP addresses of applications within GCP
#   - GCP automatically provides Domain Name Service resolution for internal IP addresses of VM instances

# Cloud CDN (Content Delivery Network)
# - It helps cache content in Google's edge caches closer to end user
# - CDN Interconnect allows you to use different CDN