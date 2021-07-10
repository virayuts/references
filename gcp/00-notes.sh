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

# Listing and Setting Default Zone
# - Many GCP resources utilizes VM underneath, thus, these options will specify from which zone the VM are created from
gcloud compute zones list                   # List all the available zones for compute engine
gcloud config set compute/zone ZONE_NAME    # Set zone to work with

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

# Cloud Shell Available Environment Variable
$DEVSHELL_PROJECT_ID    # Current Project ID

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

# Viewing Current Active Account
gcloud auth list

# Viewing Current Active Project
gcloud config list project

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
#   - GCP automatically provides Domain Name Service resolution for internal IP addresses of VM instances
# - Many command options exist to tune VM
gcloud compute instances create VM_NAME

# Google Kubernetes Engine (GKE)
# - It is a managed Kubernetes service
# - It provides
#   - Auto node repair
#   - Auto upgrade Kubernetes
# - It utilizes GCP services
#   - VM are created from compute engine
#   - Load balancer service of Kubernetes that exposes service to the internet utilizes
#     Cloud Load Balancing (TCP/UDP Load Balancer)

# Creating a Cluster
# - Many command options exist to tune cluster
gcloud container clusters create CLUSTER_NAME

# Anthos
# - It is a hybrid and multi cloud systems and services management
# - It provides
#   - Single control plane for managing services running on both on-premise and cloud, e.g.,
#     GKE and Kubernetes on-premise
#   - Maintaining consistent policies across all the cluster

# App Engine
# - It is a PaaS which manages the hardware and networking infrastructure required to run application code
# - It provides
#   - No need to provision and maintain servers
#   - Scaling application automatically
#   - Seamlessly integrate with other GCP services
# - It has two environment
#   - Standard
#       - Application runtime is provided by the App Engine
#       - Application is run in a sandbox independent of hardware, operating system, location of server, etc. but it has
#         constraint on application like no writing to local file, request time out after 60s, limits on third party
#         software
#       - Pricing based on usage with automatic shutdown on no traffic
#   - Flexible
#       - Application is run in a container inside a compute engine VM which is managed by App Engine
#       - It has no constraint on the application
#       - Pricing based on resource allocation with no automatic shutdown

# App Engine Application
# - It uses yaml file to specify application configuration
#   - app.yaml
#       - It specifies information about the application needs

# Creating App Engine
gcloud app create --project PROJECT_ID

# Deploying Application
gcloud app deploy

# Launching Application in Browser
gcloud app browse

# Cloud Function
# - It is a single purpose function that is run in respond to events in GCP
# - It provision resource for executing the function automatically
# - It can responds to events in
#   - Cloud Storage
#   - Cloud Pub/Sub
#   - HTTP call
# - Its function is executed in a managed Node.js environment

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
# - It is a fully distributed, fully managed service that helps with distributing incoming traffic from the internet 
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

# Cloud CDN (Content Delivery Network)
# - It helps cache content in Google's edge caches closer to end user
# - CDN Interconnect allows you to use different CDN

# Cloud Storage
# - It is a fully managed service for storing large binary object
# - It consists of buckets where objects are stored within
#   - Bucket names are globally unique
#   - Bucket can have different storage class
#       - Multi Regional
#           - It is suitable for data that are frequently accessed across region
#           - It redundantly stored data in atleast two region
#           - It has low retrieval price and higher storage price
#       - Regional
#           - It is suitable for data that are frequently accessed within a region
#           - It has low retrieval price and high storage price
#       - Nearline
#           - It is suitable for data that are accessed at most once a month
#           - It has high retrieval price and low storage price
#       - Coldline
#           - It is suitable for data that are accessed at most once a year
#           - It has higher retrieval price and lower storage price
# - Stored object are
#   - Provided unique key which is in the form of URLs with format gs://BUCKET_NAME/FILE_LOCATION
#   - Immutable (new version always override old version)
#       - Object versioning can be turned on to keep track of modification to the object which can then be used
#         to restored to an earlier state, etc.
#   - Manageable with life cycle policy
#   - Encrypted at rest and in transit via HTTPs
# - It provides API and command line tool (gsutil) to interact with
# - It can import data by
#   - Online Transfer
#       - Cloud Console or Cloud SDK and its command line tool (gsutil)
#   - Storage Transfer Service
#       - It allows transfer of huge amount of data from other cloud provider or from an HTTPs endpoint
#   - Transfer Appliance
#       - It allows transfer of huge amount of data by leasing storage appliance, uploads data into it and ship it
#         to the upload facility
# - It integrates seamlessly with other GCP services, e.g., importing/exporting tables for Cloud SQL and BigQuery

# Creating Bucket
# - Its LOCATION_NAME can be US, EU or ASIA
gsutil mb -l LOCATION_NAME gs://BUCKET_NAME

# Copying Files
gsutil cp SOURCE DESTINATION

# Modifying Access Control List
gsutil acl ch -u allUsers:R FILE_LOCATION   # In this case, all user is given read access

# Cloud BigTable
# - It is a managed NoSQL, wide-column database service
# - It is ideal for
#   - Storing data with single lookup key
#   - Storing large amount of data with low latency (high read/write)
# - It can be accessed with the open source HBase API providing compatibility with the Hadoop ecosystem
# - It encrypts data both at rest and in transit
# - Its data can be
#   - Read/Write using Application API
#   - Streamed in using streaming frameworks such as Cloud Dataflow Streaming, Spark Streaming, etc.
#   - Read/Write through batch processes such as Dataflow, spark, etc.

# Cloud DataStore
# - It is a fully managed NoSQL, document database service (horizontally scalable)
# - It provides
#   - SQL like queries and transaction that can affect multiple document

# Cloud SQL
# - It is a managed SQL, relational database service (MYSQL and PostgreSQL)
# - It provides
#   - Automatic replication set up for read, failover, etc.
#   - Automatic backups
#   - Data encryption at rest and in transit within GCP network
#   - Network Firewall
# - It integreate seamlessly with internal GCP services and other external tools

# Cloud Spanner
# - It is a managed relational database service (horizontally scalable)
# - It provides
#   - Consistencty at a global scale
#   - Automatic synchronous replication

# Cloud Dataproc
# - It is a managed service for Hadoop and its ecosystem, i.e., Spark, Hive, Pig
# - It integrate seamlessly with GCP services
#   - It utilizes compute engine VM for its infrastructure
#   - It can be monitored with Cloud Operation Suite's tools

# Cloud Dataflow
# - It is a fully managed service for data processing, i.e., ETL (Extract Transform Load) pipeline
# - It supports both batch, streaming processing
# - It automates the infrastruction needed to process
# - It integrate seamlessly with GCP services that act like SOURCE and SINK, e.g., Cloud Storage, Cloud Pub/Sub,
#   BigQuery, BigTable, etc.

# BigQuery
# - It is a fully managed data warehouse service
# - It is suitable for interactive analysis of massive datasets using SQL syntax
# - There is two type of Pricing
#   - Pay for storage (discount for long-term storage)
#   - Pay for queries

# Running a Query
bq query "QUERY"

# Cloud Pub/Sub
# - It is a messaging service
# - It guarantee atleast once delivery
# - Its component includes
#   - Publisher
#       - It push messages
#   - Subscriber
#       - It subscribe to messages in a topic
#   - Topic
#       - It is where messages reside
# - Its messages can be either
#       - Push
#           - Subscriber gets notified for new message
#       - Pull
#           - Subscriber check for new message at interval

# Cloud Datalab
# - It offer interactive data exploration based Jupyter
# - It integrate seamlessly with GCP services
#   - Compute Engine VM is used to run the application
#   - BigQuery, Cloud Storage, etc. for accessing data
# - Pricing is pay only for the resource used

# Cloud Endpoints
# - It is an API management tool
# - It provides
#   - Expose and manage consumer of an existing API
#   - Monitor and logs API usage
# - It implements features by deploying a proxy in front of the API service

# Apigee Edge
# - It is an API management tool
# - It provides
#   - Monetization of API
#   - Rate limiting, quotas and analytics on API usage

# Cloud Source Repositories
# - It provides Git source control repository hosted on GCP
# - It integrates with IAM to manage access management

# Deployment Manager
# - It is an infrastructure management service that automates creation and management of GCP resource
# - It uses a yaml template to describe the required environment

# Creating a Deployment
gcloud deployment-manager deployments create DEPLOYMENT_NAME
    --config FILE_NAME.yaml

# Updating a Deployment
gcloud deployment-manager deployments update DEPLOYMENT_NAME
    --config FILE_NAME.yaml

# Viewing Deployment
gcloud deployment-manager deployments list

# Cloud Operation Suite (formerly Stackdriver)
# - It is a GCP collection of tools for monitoring, logging and diagnostics
# - It provides
#   - Monitoring
#       - It includes platform, system and application metrics
#       - It can provide uptime/health check of services
#       - It can set up dashboard and alert on interesting criteria
#   - Logging
#       - It includes platform, system and application logs
#       - It provides ability to view, search, filter and export log
#       - It can create metric from logs
#   - Trace
#       - It can sample latency of application and report per URL statistics
#   - Error Reporting
#       - It tracks and group error from application
#       - It can notify when new error are detected
#   - Debugger
#       - It can help debug application in production environment
#   - Profiler
