// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/efs/v1alpha1

package v1alpha1

// MountTargetParameters defines the desired state of MountTarget
#MountTargetParameters: {
	// Region is which region the MountTarget will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// Valid IPv4 address within the address range of the specified subnet.
	ipAddress?: null | string @go(IPAddress,*string)

	#CustomMountTargetParameters
}

// MountTargetSpec defines the desired state of MountTarget
#MountTargetSpec: {
	forProvider: #MountTargetParameters @go(ForProvider)
}

// MountTargetObservation defines the observed state of MountTarget
#MountTargetObservation: {
	// The unique and consistent identifier of the Availability Zone that the mount
	// target resides in. For example, use1-az1 is an AZ ID for the us-east-1 Region
	// and it has the same location in every Amazon Web Services account.
	availabilityZoneID?: null | string @go(AvailabilityZoneID,*string)

	// The name of the Availability Zone in which the mount target is located. Availability
	// Zones are independently mapped to names for each Amazon Web Services account.
	// For example, the Availability Zone us-east-1a for your Amazon Web Services
	// account might not be the same location as us-east-1a for another Amazon Web
	// Services account.
	availabilityZoneName?: null | string @go(AvailabilityZoneName,*string)

	// The ID of the file system for which the mount target is intended.
	fileSystemID?: null | string @go(FileSystemID,*string)

	// Lifecycle state of the mount target.
	lifeCycleState?: null | string @go(LifeCycleState,*string)

	// System-assigned mount target ID.
	mountTargetID?: null | string @go(MountTargetID,*string)

	// The ID of the network interface that Amazon EFS created when it created the
	// mount target.
	networkInterfaceID?: null | string @go(NetworkInterfaceID,*string)

	// Amazon Web Services account ID that owns the resource.
	ownerID?: null | string @go(OwnerID,*string)

	// The ID of the mount target's subnet.
	subnetID?: null | string @go(SubnetID,*string)

	// The virtual private cloud (VPC) ID that the mount target is configured in.
	vpcID?: null | string @go(VPCID,*string)
}

// MountTargetStatus defines the observed state of MountTarget.
#MountTargetStatus: {
	atProvider?: #MountTargetObservation @go(AtProvider)
}

// MountTarget is the Schema for the MountTargets API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#MountTarget: {
	spec:    #MountTargetSpec   @go(Spec)
	status?: #MountTargetStatus @go(Status)
}

// MountTargetList contains a list of MountTargets
#MountTargetList: {
	items: [...#MountTarget] @go(Items,[]MountTarget)
}
