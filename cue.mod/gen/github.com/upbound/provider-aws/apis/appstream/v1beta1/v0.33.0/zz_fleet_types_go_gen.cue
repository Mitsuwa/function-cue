// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/appstream/v1beta1

package v1beta1

#ComputeCapacityObservation: {
	// Number of currently available instances that can be used to stream sessions.
	available?: null | float64 @go(Available,*float64)

	// Number of instances in use for streaming.
	inUse?: null | float64 @go(InUse,*float64)

	// Total number of simultaneous streaming instances that are running.
	running?: null | float64 @go(Running,*float64)
}

#ComputeCapacityParameters: {
	// Desired number of streaming instances.
	// +kubebuilder:validation:Required
	desiredInstances?: null | float64 @go(DesiredInstances,*float64)
}

#DomainJoinInfoObservation: {
}

#DomainJoinInfoParameters: {
	// Fully qualified name of the directory (for example, corp.example.com).
	// +kubebuilder:validation:Optional
	directoryName?: null | string @go(DirectoryName,*string)

	// Distinguished name of the organizational unit for computer accounts.
	// +kubebuilder:validation:Optional
	organizationalUnitDistinguishedName?: null | string @go(OrganizationalUnitDistinguishedName,*string)
}

#FleetObservation: {
	// ARN of the appstream fleet.
	arn?: null | string @go(Arn,*string)

	// Configuration block for the desired capacity of the fleet. See below.
	// +kubebuilder:validation:Required
	computeCapacity?: [...#ComputeCapacityObservation] @go(ComputeCapacity,[]ComputeCapacityObservation)

	// Date and time, in UTC and extended RFC 3339 format, when the fleet was created.
	createdTime?: null | string @go(CreatedTime,*string)

	// Unique identifier (ID) of the appstream fleet.
	id?: null | string @go(ID,*string)

	// State of the fleet. Can be STARTING, RUNNING, STOPPING or STOPPED
	state?: null | string @go(State,*string)
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#FleetParameters: {
	// Configuration block for the desired capacity of the fleet. See below.
	// +kubebuilder:validation:Required
	computeCapacity: [...#ComputeCapacityParameters] @go(ComputeCapacity,[]ComputeCapacityParameters)

	// Description to display.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Amount of time that a streaming session remains active after users disconnect.
	// +kubebuilder:validation:Optional
	disconnectTimeoutInSeconds?: null | float64 @go(DisconnectTimeoutInSeconds,*float64)

	// Human-readable friendly name for the AppStream fleet.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Configuration block for the name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. See below.
	// +kubebuilder:validation:Optional
	domainJoinInfo?: [...#DomainJoinInfoParameters] @go(DomainJoinInfo,[]DomainJoinInfoParameters)

	// Enables or disables default internet access for the fleet.
	// +kubebuilder:validation:Optional
	enableDefaultInternetAccess?: null | bool @go(EnableDefaultInternetAccess,*bool)

	// Fleet type. Valid values are: ON_DEMAND, ALWAYS_ON
	// +kubebuilder:validation:Optional
	fleetType?: null | string @go(FleetType,*string)

	// ARN of the IAM role to apply to the fleet.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	iamRoleArn?: null | string @go(IAMRoleArn,*string)

	// Amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the disconnect_timeout_in_seconds time interval begins.
	// +kubebuilder:validation:Optional
	idleDisconnectTimeoutInSeconds?: null | float64 @go(IdleDisconnectTimeoutInSeconds,*float64)

	// ARN of the public, private, or shared image to use.
	// +kubebuilder:validation:Optional
	imageArn?: null | string @go(ImageArn,*string)

	// Name of the image used to create the fleet.
	// +kubebuilder:validation:Optional
	imageName?: null | string @go(ImageName,*string)

	// Instance type to use when launching fleet instances.
	// +kubebuilder:validation:Required
	instanceType?: null | string @go(InstanceType,*string)

	// Maximum amount of time that a streaming session can remain active, in seconds.
	// +kubebuilder:validation:Optional
	maxUserDurationInSeconds?: null | float64 @go(MaxUserDurationInSeconds,*float64)

	// Unique name for the fleet.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// AppStream 2.0 view that is displayed to your users when they stream from the fleet. When APP is specified, only the windows of applications opened by users display. When DESKTOP is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to APP.
	// +kubebuilder:validation:Optional
	streamView?: null | string @go(StreamView,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Configuration block for the VPC configuration for the image builder. See below.
	// +kubebuilder:validation:Optional
	vpcConfig?: [...#VPCConfigParameters] @go(VPCConfig,[]VPCConfigParameters)
}

#VPCConfigObservation: {
}

#VPCConfigParameters: {
	// Identifiers of the security groups for the fleet or image builder.
	// +kubebuilder:validation:Optional
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// Identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:refFieldName=SubnetIDRefs
	// +crossplane:generate:reference:selectorFieldName=SubnetIDSelector
	// +kubebuilder:validation:Optional
	subnetIds?: [...null | string] @go(SubnetIds,[]*string)
}

// FleetSpec defines the desired state of Fleet
#FleetSpec: {
	forProvider: #FleetParameters @go(ForProvider)
}

// FleetStatus defines the observed state of Fleet.
#FleetStatus: {
	atProvider?: #FleetObservation @go(AtProvider)
}

// Fleet is the Schema for the Fleets API. Provides an AppStream fleet
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws},path=fleet
#Fleet: {
	spec:    #FleetSpec   @go(Spec)
	status?: #FleetStatus @go(Status)
}

// FleetList contains a list of Fleets
#FleetList: {
	items: [...#Fleet] @go(Items,[]Fleet)
}
