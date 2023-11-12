// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/ec2/manualv1alpha1

package manualv1alpha1

// BlockDeviceMapping describes a block device mapping.
#BlockDeviceMapping: {
	// The device name (for example, /dev/sdh or xvdh).
	deviceName?: null | string @go(DeviceName,*string)

	// Parameters used to automatically set up EBS volumes when the instance is
	// launched.
	ebs?: null | #EBSBlockDevice @go(EBS,*EBSBlockDevice)

	// Suppresses the specified device included in the block device mapping of the
	// AMI.
	noDevice?: null | string @go(NoDevice,*string)

	// The virtual device name (ephemeralN). Instance store volumes are numbered
	// starting from 0. An instance type with 2 available instance store volumes
	// can specify mappings for ephemeral0 and ephemeral1. The number of available
	// instance store volumes depends on the instance type. After you connect to
	// the instance, you must mount the volume.
	//
	// NVMe instance store volumes are automatically enumerated and assigned a device
	// name. Including them in your block device mapping has no effect.
	//
	// Constraints: For M3 instances, you must specify instance store volumes in
	// the block device mapping for the instance. When you launch an M3 instance,
	// we ignore any instance store volumes specified in the block device mapping
	// for the AMI.
	virtualName?: null | string @go(VirtualName,*string)
}

// CapacityReservationSpecification describes an instance's Capacity Reservation targeting option. You can specify
// only one parameter at a time. If you specify CapacityReservationPreference
// and CapacityReservationTarget, the request fails.
//
// Use the CapacityReservationPreference parameter to configure the instance
// to run as an On-Demand Instance or to run in any open Capacity Reservation
// that has matching attributes (instance type, platform, Availability Zone).
// Use the CapacityReservationTarget parameter to explicitly target a specific
// Capacity Reservation.
#CapacityReservationSpecification: {
	// Indicates the instance's Capacity Reservation preferences. Possible preferences
	// include:
	//
	//    * open - The instance can run in any open Capacity Reservation that has
	//    matching attributes (instance type, platform, Availability Zone).
	//
	//    * none - The instance avoids running in a Capacity Reservation even if
	//    one is available. The instance runs as an On-Demand Instance.
	// +kubebuilder:validation:Enum=open;none
	capacityReservationsPreference: string @go(CapacityReservationPreference)

	// Information about the target Capacity Reservation.
	// +optional
	capacityReservationTarget?: null | #CapacityReservationTarget @go(CapacityReservationTarget,*CapacityReservationTarget)
}

// CapacityReservationSpecificationResponse describes the instance's Capacity Reservation targeting
// preferences. The action returns the capacityReservationPreference response element if the
// instance is configured to run in On-Demand capacity, or if it is configured
// in run in any open Capacity Reservation that has matching attributes (instance
// type, platform, Availability Zone). The action returns the capacityReservationTarget
// response element if the instance explicily targets a specific Capacity Reservation.
#CapacityReservationSpecificationResponse: {
	// Describes the instance's Capacity Reservation preferences. Possible preferences
	// include:
	//
	//    * open - The instance can run in any open Capacity Reservation that has
	//    matching attributes (instance type, platform, Availability Zone).
	//
	//    * none - The instance avoids running in a Capacity Reservation even if
	//    one is available. The instance runs in On-Demand capacity.
	capacityReservationPreference: string @go(CapacityReservationPreference)

	// Information about the targeted Capacity Reservation.
	// +optional
	capacityReservationTarget?: null | #CapacityReservationTarget @go(CapacityReservationTarget,*CapacityReservationTarget)
}

// CapacityReservationTarget describes a target Capacity Reservation.
#CapacityReservationTarget: {
	// The ID of the Capacity Reservation.
	// +optional
	capacityReservationId?: null | string @go(CapacityReservationID,*string)
}

// CPUOptionsRequest defines the options for the instance. Both the core count and threads per core
// must be specified in the request.
#CPUOptionsRequest: {
	// The number of CPU cores for the instance.
	coreCount?: null | int32 @go(CoreCount,*int32)

	// The number of threads per CPU core. To disable multithreading for the instance,
	// specify a value of 1. Otherwise, specify the default value of 2.
	threadsPerCore?: null | int32 @go(ThreadsPerCore,*int32)
}

// CreditSpecificationRequest describes the credit option for CPU usage of a T2 or T3 instance.
#CreditSpecificationRequest: {
	// The credit option for CPU usage of a T2 or T3 instance. Valid values are
	// standard and unlimited.
	//
	// CPUCredits is a required field
	cpuCredits?: null | string @go(CPUCredits,*string)
}

// EBSBlockDevice describes a block device for an EBS volume.
#EBSBlockDevice: {
	// Indicates whether the EBS volume is deleted on instance termination. For
	// more information, see Preserving Amazon EBS Volumes on Instance Termination
	// (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#preserving-volumes-on-termination)
	// in the Amazon Elastic Compute Cloud User Guide.
	deleteOnTermination?: null | bool @go(DeleteOnTermination,*bool)

	// Indicates whether the encryption state of an EBS volume is changed while
	// being restored from a backing snapshot. The effect of setting the encryption
	// state to true depends on the volume origin (new or from a snapshot), starting
	// encryption state, ownership, and whether encryption by default is enabled.
	// For more information, see Amazon EBS Encryption (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-parameters)
	// in the Amazon Elastic Compute Cloud User Guide.
	//
	// In no case can you remove encryption from an encrypted volume.
	//
	// Encrypted volumes can only be attached to instances that support Amazon EBS
	// encryption. For more information, see Supported Instance Types (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances).
	//
	// This parameter is not returned by .
	encrypted?: null | bool @go(Encrypted,*bool)

	// The number of I/O operations per second (IOPS) that the volume supports.
	// For io1 volumes, this represents the number of IOPS that are provisioned
	// for the volume. For gp2 volumes, this represents the baseline performance
	// of the volume and the rate at which the volume accumulates I/O credits for
	// bursting. For more information, see Amazon EBS Volume Types (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
	// in the Amazon Elastic Compute Cloud User Guide.
	//
	// Constraints: Range is 100-16,000 IOPS for gp2 volumes and 100 to 64,000IOPS
	// for io1 volumes in most Regions. Maximum io1 IOPS of 64,000 is guaranteed
	// only on Nitro-based instances (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances).
	// Other instance families guarantee performance up to 32,000 IOPS. For more
	// information, see Amazon EBS Volume Types (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
	// in the Amazon Elastic Compute Cloud User Guide.
	//
	// Condition: This parameter is required for requests to create io1 volumes;
	// it is not used in requests to create gp2, st1, sc1, or standard volumes.
	iops?: null | int32 @go(IOps,*int32)

	// The throughput that the volume supports, in MiB/s.
	//
	// Constraints: Up to 1,000MiB/s for gp3 volumes.
	//
	// Condition: This parameter is optional and only used to create gp3 volumes;
	// it is not used in requests to create gp2, st1, sc1, io1, or standard volumes.
	throughput?: null | int32 @go(Throughput,*int32)

	// Identifier (key ID, key alias, ID ARN, or alias ARN) for a customer managed
	// CMK under which the EBS volume is encrypted.
	//
	// This parameter is only supported on BlockDeviceMapping objects called by
	// RunInstances (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html),
	// RequestSpotFleet (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotFleet.html),
	// and RequestSpotInstances (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html).
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1.Key
	// +crossplane:generate:reference:refFieldName=KMSKeyIDRef
	// +crossplane:generate:reference:selectorFieldName=KMSKeyIDSelector
	kmsKeyId?: null | string @go(KmsKeyID,*string)

	// The ID of the snapshot.
	snapshotId?: null | string @go(SnapshotID,*string)

	// The size of the volume, in GiB.
	//
	// Default: If you're creating the volume from a snapshot and don't specify
	// a volume size, the default is the snapshot size.
	//
	// Constraints: 1-16384 for General Purpose SSD (gp2), 4-16384 for Provisioned
	// IOPS SSD (io1), 500-16384 for Throughput Optimized HDD (st1), 500-16384 for
	// Cold HDD (sc1), and 1-1024 for Magnetic (standard) volumes. If you specify
	// a snapshot, the volume size must be equal to or larger than the snapshot
	// size.
	volumeSize?: null | int32 @go(VolumeSize,*int32)

	// The volume type. If you set the type to io1, you must also specify the Iops
	// parameter. If you set the type to gp2, st1, sc1, or standard, you must omit
	// the Iops parameter.
	//
	// Default: gp2
	volumeType?: string @go(VolumeType)
}

// EBSInstanceBlockDevice describes a parameter used to set up an EBS volume in a block device mapping.
#EBSInstanceBlockDevice: {
	// Indicates whether the volume is deleted on instance termination.
	deleteOnTermination?: null | bool @go(DeleteOnTermination,*bool)

	// The attachment state.
	status: string @go(Status)

	// The ID of the EBS volume.
	volumeId?: null | string @go(VolumeID,*string)
}

// ElasticGPUAssociation describes the association between an instance and an Elastic Graphics accelerator.
#ElasticGPUAssociation: {
	// The ID of the association.
	elasticGpuAssociationId?: null | string @go(ElasticGPUAssociationID,*string)

	// The state of the association between the instance and the Elastic Graphics
	// accelerator.
	elasticGpuAssociationState?: null | string @go(ElasticGPUAssociationState,*string)

	// The time the Elastic Graphics accelerator was associated with the instance.
	elasticGpuAssociationTime?: null | string @go(ElasticGPUAssociationTime,*string)

	// The ID of the Elastic Graphics accelerator.
	elasticGpuId?: null | string @go(ElasticGPUID,*string)
}

// ElasticGPUSpecification is a specification for an Elastic Graphics accelerator.
#ElasticGPUSpecification: {
	// The type of Elastic Graphics accelerator. For more information about the
	// values to specify for Type, see Elastic Graphics Basics (https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html#elastic-graphics-basics),
	// specifically the Elastic Graphics accelerator column, in the Amazon Elastic
	// Compute Cloud User Guide for Windows Instances.
	//
	// Type is a required field
	type?: null | string @go(Type,*string)
}

// ElasticInferenceAccelerator describes an elastic inference accelerator.
#ElasticInferenceAccelerator: {
	// The number of elastic inference accelerators to attach to the instance.
	//
	// Default: 1
	count?: null | int32 @go(Count,*int32)

	// The type of elastic inference accelerator. The possible values are eia1.medium,
	// eia1.large, and eia1.xlarge.
	//
	// Type is a required field
	type?: null | string @go(Type,*string)
}

// ElasticInferenceAcceleratorAssociation describes the association between an instance and an elastic inference accelerator.
#ElasticInferenceAcceleratorAssociation: {
	// The Amazon Resource Name (ARN) of the elastic inference accelerator.
	elasticInferenceAcceleratorArn?: null | string @go(ElasticInferenceAcceleratorARN,*string)

	// The ID of the association.
	elasticInferenceAcceleratorAssociationId?: null | string @go(ElasticInferenceAcceleratorAssociationID,*string)

	// The state of the elastic inference accelerator.
	elasticInferenceAcceleratorAssociationState?: null | string @go(ElasticInferenceAcceleratorAssociationState,*string)
}

// GroupIdentifier describes a security group
#GroupIdentifier: {
	// GroupID is the security group identifier
	groupId: string @go(GroupID)

	// GroupName is the name of the security group
	groupName: string @go(GroupName)
}

// HibernationOptionsRequest indicates whether your instance is configured for hibernation. This parameter
// is valid only if the instance meets the hibernation prerequisites (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites).
// For more information, see Hibernate Your Instance (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html)
// in the Amazon Elastic Compute Cloud User Guide.
#HibernationOptionsRequest: {
	// If you set this parameter to true, your instance is enabled for hibernation.
	//
	// Default: false
	configured?: null | bool @go(Configured,*bool)
}

// IAMInstanceProfile Describes an IAM instance profile.
#IAMInstanceProfile: {
	// The Amazon Resource Name (ARN) of the instance profile.
	arn?: null | string @go(ARN,*string)

	// The ID of the instance profile.
	id?: null | string @go(ID,*string)
}

// IAMInstanceProfileSpecification describes an IAM instance profile.
// Use one of 'arn' or 'name'.
#IAMInstanceProfileSpecification: {
	// The Amazon Resource Name (ARN) of the instance profile.
	// +optional
	arn?: null | string @go(ARN,*string)

	// The name of the instance profile.
	// +optional
	name?: null | string @go(Name,*string)
}

// InstanceBlockDeviceMapping describes a block device mapping.
#InstanceBlockDeviceMapping: {
	// The device name (for example, /dev/sdh or xvdh).
	deviceName?: null | string @go(DeviceName,*string)

	// Parameters used to automatically set up EBS volumes when the instance is
	// launched.
	ebs?: null | #EBSInstanceBlockDevice @go(EBS,*EBSInstanceBlockDevice)
}

// InstanceMarketOptionsRequest describes the market (purchasing) option for the instances.
#InstanceMarketOptionsRequest: {
	// The market type.
	marketType: string @go(MarketType)

	// The options for Spot Instances.
	spotOptions?: null | #SpotMarketOptions @go(SpotOptions,*SpotMarketOptions)
}

// InstanceIPv6Address describes an IPv6 address.
#InstanceIPv6Address: {
	// The IPv6 address.
	ipv6Address?: null | string @go(IPv6Address,*string)
}

// Ipv6PrefixSpecificationRequest describes the IPv4 prefix option for a network interface.
#Ipv6PrefixSpecificationRequest: {
	// The IPv6 prefix.
	// +immutable
	// +kubebuilder:validation:Required
	ipv6Prefix: string @go(Ipv6Prefix)
}

// InstanceMetadataOptionsRequest defines the metadata options for the instance.
#InstanceMetadataOptionsRequest: {
	// This parameter enables or disables the HTTP metadata endpoint on your instances.
	// If the parameter is not specified, the default state is enabled.
	//
	// If you specify a value of disabled, you will not be able to access your instance
	// metadata.
	// +optional
	// +kubebuilder:validation:Enum=enabled;disabled
	httpEndpoint: string @go(HTTPEndpoint)

	// The desired HTTP PUT response hop limit for instance metadata requests. The
	// larger the number, the further instance metadata requests can travel.
	//
	// Default: 1
	//
	// Possible values: Integers from 1 to 64
	// +optional
	httpPutResponseHopLimit?: null | int32 @go(HTTPPutResponseHopLimit,*int32)

	// The state of token usage for your instance metadata requests. If the parameter
	// is not specified in the request, the default state is optional.
	//
	// If the state is optional, you can choose to retrieve instance metadata with
	// or without a signed token header on your request. If you retrieve the IAM
	// role credentials without a token, the version 1.0 role credentials are returned.
	// If you retrieve the IAM role credentials using a valid signed token, the
	// version 2.0 role credentials are returned.
	//
	// If the state is required, you must send a signed token header with any instance
	// metadata retrieval requests. In this state, retrieving the IAM role credentials
	// always returns the version 2.0 credentials; the version 1.0 credentials are
	// not available.
	// +kubebuilder:validation:Enum=optional;required
	httpTokens: string @go(HTTPTokens)
}

// InstanceNetworkInterface describes a network interface.
#InstanceNetworkInterface: {
	// The association information for an Elastic IPv4 associated with the network
	// interface.
	// +optional
	association?: null | #InstanceNetworkInterfaceAssociation @go(Association,*InstanceNetworkInterfaceAssociation)

	// The network interface attachment.
	// +optional
	attachment?: null | #InstanceNetworkInterfaceAttachment @go(Attachment,*InstanceNetworkInterfaceAttachment)

	// The description.
	// +optional
	description?: null | string @go(Description,*string)

	// One or more security groups.
	// +optional
	groups: [...#GroupIdentifier] @go(Groups,[]GroupIdentifier)

	// Describes the type of network interface.
	//
	// Valid values: interface | efa
	// +optional
	interfaceType?: null | string @go(InterfaceType,*string)

	// One or more IPv6 addresses associated with the network interface.
	// +optional
	ipv6Addresses: [...#InstanceIPv6Address] @go(IPv6Addresses,[]InstanceIPv6Address)

	// The MAC address.
	// +optional
	macAddress?: null | string @go(MacAddress,*string)

	// The ID of the network interface.
	// +optional
	networkInterfaceId?: null | string @go(NetworkInterfaceID,*string)

	// The ID of the AWS account that created the network interface.
	// +optional
	ownerId?: null | string @go(OwnerID,*string)

	// The private DNS name.
	// +optional
	privateDnsName?: null | string @go(PrivateDNSName,*string)

	// The IPv4 address of the network interface within the subnet.
	// +optional
	privateIpAddress?: null | string @go(PrivateIPAddress,*string)

	// One or more private IPv4 addresses associated with the network interface.
	// +optional
	privateIpAddresses: [...#InstancePrivateIPAddress] @go(PrivateIPAddresses,[]InstancePrivateIPAddress)

	// Indicates whether to validate network traffic to or from this network interface.
	// +optional
	sourceDestCheck?: null | bool @go(SourceDestCheck,*bool)

	// The status of the network interface.
	status: string @go(Status)

	// The ID of the subnet.
	// +optional
	subnetId?: null | string @go(SubnetID,*string)

	// The ID of the VPC.
	// +optional
	vpcId?: null | string @go(VPCID,*string)
}

// InstanceNetworkInterfaceAssociation describes association information for an Elastic IP address (IPv4).
#InstanceNetworkInterfaceAssociation: {
	// The ID of the owner of the Elastic IP address.
	// +optional
	ipOwnerId?: null | string @go(IPOwnerID,*string)

	// The public DNS name.
	// +optional
	publicDnsName?: null | string @go(PublicDNSName,*string)

	// The public IP address or Elastic IP address bound to the network interface.
	// +optional
	publicIp?: null | string @go(PublicIP,*string)
}

// InstanceNetworkInterfaceAttachment describes a network interface attachment.
#InstanceNetworkInterfaceAttachment: {
	// The ID of the network interface attachment.
	// +optional
	attachmentId?: null | string @go(AttachmentID,*string)

	// Indicates whether the network interface is deleted when the instance is terminated.
	// +optional
	deleteOnTermination?: null | bool @go(DeleteOnTermination,*bool)

	// The index of the device on the instance for the network interface attachment.
	// +optional
	deviceIndex?: null | int32 @go(DeviceIndex,*int32)

	// The attachment state.
	// +optional
	status: string @go(Status)
}

// InstanceNetworkInterfaceSpecification describes a network interface.
#InstanceNetworkInterfaceSpecification: {
	// Indicates whether to assign a public IPv4 address to an instance you launch
	// in a VPC. The public IP address can only be assigned to a network interface
	// for eth0, and can only be assigned to a new network interface, not an existing
	// one. You cannot specify more than one network interface in the request. If
	// launching into a default subnet, the default value is true.
	// +optional
	associatePublicIpAddress?: null | bool @go(AssociatePublicIPAddress,*bool)

	// If set to true, the interface is deleted when the instance is terminated.
	// You can specify true only if creating a new network interface when launching
	// an instance.
	// +optional
	deleteOnTermination?: null | bool @go(DeleteOnTermination,*bool)

	// The description of the network interface. Applies only if creating a network
	// interface when launching an instance.
	// +optional
	description?: null | string @go(Description,*string)

	// The position of the network interface in the attachment order. A primary
	// network interface has a device index of 0.
	//
	// If you specify a network interface when launching an instance, you must specify
	// the device index.
	deviceIndex?: null | int32 @go(DeviceIndex,*int32)

	// The IDs of the security groups for the network interface. Applies only if
	// creating a network interface when launching an instance.
	groups: [...string] @go(Groups,[]string)

	// The type of network interface. To create an Elastic Fabric Adapter (EFA),
	// specify efa. For more information, see Elastic Fabric Adapter (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/efa.html)
	// in the Amazon Elastic Compute Cloud User Guide.
	//
	// If you are not creating an EFA, specify interface or omit this parameter.
	//
	// Valid values: interface | efa
	// +kubebuilder:validation:Enum=interface;efa
	interfaceType?: null | string @go(InterfaceType,*string)

	// A number of IPv6 addresses to assign to the network interface. Amazon EC2
	// chooses the IPv6 addresses from the range of the subnet. You cannot specify
	// this option and the option to assign specific IPv6 addresses in the same
	// request. You can specify this option if you've specified a minimum number
	// of instances to launch.
	// +optional
	ipv6AddressCount?: null | int32 @go(IPv6AddressCount,*int32)

	// One or more IPv6 addresses to assign to the network interface. You cannot
	// specify this option and the option to assign a number of IPv6 addresses in
	// the same request. You cannot specify this option if you've specified a minimum
	// number of instances to launch.
	// +optional
	ipv6Addresses: [...#InstanceIPv6Address] @go(IPv6Addresses,[]InstanceIPv6Address)

	// The number of IPv6 delegated prefixes to be automatically assigned to the
	// network interface. You cannot use this option if you use the Ipv6Prefix option.
	// +optional
	// +immutable
	ipv6PrefixCount?: null | int32 @go(Ipv6PrefixCount,*int32)

	// One or more IPv6 delegated prefixes to be assigned to the network interface. You
	// cannot use this option if you use the Ipv6PrefixCount option.
	// +optional
	// +immutable
	ipv6Prefixes?: [...#Ipv6PrefixSpecificationRequest] @go(Ipv6Prefixes,[]Ipv6PrefixSpecificationRequest)

	// The ID of the network interface.
	//
	// If you are creating a Spot Fleet, omit this parameter because you can’t
	// specify a network interface ID in a launch specification.
	// +optional
	networkInterfaceId?: null | string @go(NetworkInterfaceID,*string)

	// The private IPv4 address of the network interface. Applies only if creating
	// a network interface when launching an instance. You cannot specify this option
	// if you're launching more than one instance in a RunInstances
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html)
	// request.
	// +optional
	privateIpAddress?: null | string @go(PrivateIPAddress,*string)

	// One or more private IPv4 addresses to assign to the network interface. Only
	// one private IPv4 address can be designated as primary. You cannot specify
	// this option if you're launching more than one instance in a RunInstances
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html)
	// request.
	// +optional
	privateIpAddresses: [...#PrivateIPAddressSpecification] @go(PrivateIPAddresses,[]PrivateIPAddressSpecification)

	// The number of secondary private IPv4 addresses. You can't specify this option
	// and specify more than one private IP address using the private IP addresses
	// option. You cannot specify this option if you're launching more than one
	// instance in a RunInstances
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html)
	// request.
	// +optional
	secondaryPrivateIpAddressCount?: null | int32 @go(SecondaryPrivateIPAddressCount,*int32)

	// The ID of the subnet associated with the network interface. Applies only
	// if creating a network interface when launching an instance.
	// +optional
	subnetId?: null | string @go(SubnetID,*string)
}

// InstancePrivateIPAddress describes a private IPv4 address.
#InstancePrivateIPAddress: {
	// The association information for an Elastic IP address for the network interface.
	association?: null | #InstanceNetworkInterfaceAssociation @go(Association,*InstanceNetworkInterfaceAssociation)

	// Indicates whether this IPv4 address is the primary private IP address of
	// the network interface.
	primary?: null | bool @go(Primary,*bool)

	// The private IPv4 DNS name.
	privateDnsName?: null | string @go(PrivateDNSName,*string)

	// The private IPv4 address of the network interface.
	privateIpAddress?: null | string @go(PrivateIPAddress,*string)
}

// LicenseConfigurationRequest describes a license configuration
#LicenseConfigurationRequest: {
	// Amazon Resource Name (ARN) of the license configuration
	licenseConfigurationArn?: null | string @go(LicenseConfigurationARN,*string)
}

// LaunchTemplateSpecification defines the launch template to use.
// You must specify either the launch template ID or launch template
// name in the request, but not both.
#LaunchTemplateSpecification: {
	// The ID of the launch template.
	launchTemplateId?: null | string @go(LaunchTemplateID,*string)

	// The name of the launch template.
	launchTemplateName?: null | string @go(LaunchTemplateName,*string)

	// The version number of the launch template.
	//
	// Default: The default version for the launch template.
	// +optional
	version?: null | string @go(Version,*string)
}

// Monitoring describes the monitoring of an instance.
#Monitoring: {
	// Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring
	// is enabled.
	state: string @go(State)
}

// Placement describes the placement of an instance.
#Placement: {
	// The affinity setting for the instance on the Dedicated Host. This parameter
	// is not supported for the ImportInstance
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html)
	// command.
	//
	// This parameter is not supported by CreateFleet
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
	// +optional
	affinity?: null | string @go(Affinity,*string)

	// The Availability Zone of the instance.
	//
	// If not specified, an Availability Zone will be automatically chosen for you
	// based on the load balancing criteria for the Region.
	//
	// This parameter is not supported by CreateFleet
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
	// +optional
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// The name of the placement group the instance is in.
	groupName?: null | string @go(GroupName,*string)

	// The ID of the Dedicated Host on which the instance resides. This parameter
	// is not supported for the ImportInstance
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html)
	// command.
	//
	// This parameter is not supported by CreateFleet
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
	// +optional
	hostId?: null | string @go(HostID,*string)

	// The ARN of the host resource group in which to launch the instances. If you
	// specify a host resource group ARN, omit the Tenancy parameter or set it to
	// host.
	//
	// This parameter is not supported by CreateFleet
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
	// +optional
	hostResourceGroupArn?: null | string @go(HostResourceGroupARN,*string)

	// The number of the partition the instance is in. Valid only if the placement
	// group strategy is set to partition.
	//
	// This parameter is not supported by CreateFleet
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
	// +optional
	partitionNumber?: null | int32 @go(PartitionNumber,*int32)

	// Reserved for future use.
	//
	// This parameter is not supported by CreateFleet
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
	// +optional
	spreadDomain?: null | string @go(SpreadDomain,*string)

	// The tenancy of the instance (if the instance is running in a VPC). An instance
	// with a tenancy of dedicated runs on single-tenant hardware. The host tenancy
	// is not supported for the ImportInstance
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html)
	// command.
	//
	// This parameter is not supported by CreateFleet
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
	// +optional
	tenancy?: string @go(Tenancy)
}

// PrivateIPAddressSpecification describes a secondary private IPv4 address for a network interface.
#PrivateIPAddressSpecification: {
	// Indicates whether the private IPv4 address is the primary private IPv4 address.
	// Only one IPv4 address can be designated as primary.
	// +optional
	primary?: null | bool @go(Primary,*bool)

	// The private IPv4 addresses.
	privateIPAddress?: null | string @go(PrivateIPAddress,*string)
}

// ProductCode describes a product code.
#ProductCode: {
	// The product code.
	productCodeId?: null | string @go(ProductCodeID,*string)

	// The type of product code.
	productCodeType: string @go(ProductCodeType)
}

// RunInstancesMonitoringEnabled describes the monitoring of an instance.
#RunInstancesMonitoringEnabled: {
	// Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring
	// is enabled.
	//
	// Enabled is a required field
	enabled?: null | bool @go(Enabled,*bool)
}

// SpotMarketOptions are the options for Spot Instances.
#SpotMarketOptions: {
	// The required duration for the Spot Instances (also known as Spot blocks),
	// in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300,
	// or 360).
	// +optional
	blockDurationMinutes?: null | int32 @go(BlockDurationMinutes,*int32)

	// The behavior when a Spot Instance is interrupted. The default is terminate.
	// +kubebuilder:validation:Enum=hibernate;stop;terminate
	instanceInterruptionBehavior: string @go(InstanceInterruptionBehavior)

	// The maximum hourly price you're willing to pay for the Spot Instances. The
	// default is the On-Demand price.
	// +optional
	maxPrice?: null | string @go(MaxPrice,*string)

	// The Spot Instance request type. For RunInstances (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances),
	// persistent Spot Instance requests are only supported when InstanceInterruptionBehavior
	// is set to either hibernate or stop.
	// +kubebuilder:validation:Enum=one-time;persistent
	spotInstanceType: string @go(SpotInstanceType)
}

// StateReason describes a state change.
#StateReason: {
	// The reason code for the state change.
	code?: null | string @go(Code,*string)

	// The message for the state change.
	//
	//    * Server.InsufficientInstanceCapacity: There was insufficient capacity
	//    available to satisfy the launch request.
	//
	//    * Server.InternalError: An internal error caused the instance to terminate
	//    during launch.
	//
	//    * Server.ScheduledStop: The instance was stopped due to a scheduled retirement.
	//
	//    * Server.SpotInstanceShutdown: The instance was stopped because the number
	//    of Spot requests with a maximum price equal to or higher than the Spot
	//    price exceeded available capacity or because of an increase in the Spot
	//    price.
	//
	//    * Server.SpotInstanceTermination: The instance was terminated because
	//    the number of Spot requests with a maximum price equal to or higher than
	//    the Spot price exceeded available capacity or because of an increase in
	//    the Spot price.
	//
	//    * Client.InstanceInitiatedShutdown: The instance was shut down using the
	//    shutdown -h command from the instance.
	//
	//    * Client.InstanceTerminated: The instance was terminated or rebooted during
	//    AMI creation.
	//
	//    * Client.InternalError: A client error caused the instance to terminate
	//    during launch.
	//
	//    * Client.InvalidSnapshot.NotFound: The specified snapshot was not found.
	//
	//    * Client.UserInitiatedHibernate: Hibernation was initiated on the instance.
	//
	//    * Client.UserInitiatedShutdown: The instance was shut down using the Amazon
	//    EC2 API.
	//
	//    * Client.VolumeLimitExceeded: The limit on the number of EBS volumes or
	//    total storage was exceeded. Decrease usage or request an increase in your
	//    account limits.
	message?: null | string @go(Message,*string)
}

// Tag defines a tag
#Tag: {
	// Key is the name of the tag.
	key: string @go(Key)

	// Value is the value of the tag.
	value: string @go(Value)
}

// TagSpecification defines the tags to apply to a resource when the resource is being created.
#TagSpecification: {
	// The type of resource to tag. Currently, the resource types that support tagging
	// on creation are: capacity-reservation | client-vpn-endpoint | dedicated-host
	// | fleet | fpga-image | instance | ipv4pool-ec2 | ipv6pool-ec2 | key-pair
	// | launch-template | natgateway | spot-fleet-request | placement-group | snapshot
	// | traffic-mirror-filter | traffic-mirror-session | traffic-mirror-target
	// | transit-gateway | transit-gateway-attachment | transit-gateway-route-table
	// | vpc-endpoint (for interface VPC endpoints)| vpc-endpoint-service (for gateway
	// VPC endpoints) | volume | vpc-flow-log.
	//
	// To tag a resource after it has been created, see CreateTags
	// (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).
	//
	// +kubebuilder:validation:Enum=capacity-reservation;client-vpn-endpoint;dedicated-host;fleet;fpga-image;instance;ipv4pool-ec2;ipv6pool-ec2;key-pair;launch-template;natgateway;spot-fleet-request;placement-group;snapshot;traffic-mirror-filter;traffic-mirror-session;traffic-mirror-target;transit-gateway;transit-gateway-attachment;transit-gateway-route-table;vpc-endpoint;vpc-endpoint-service;volume;vpc-flow-log
	resourceType?: null | string @go(ResourceType,*string)

	// The tags to apply to the resource
	tags: [...#Tag] @go(Tags,[]Tag)
}
