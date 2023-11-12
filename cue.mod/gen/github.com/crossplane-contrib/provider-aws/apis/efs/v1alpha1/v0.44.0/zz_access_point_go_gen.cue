// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/efs/v1alpha1

package v1alpha1

// AccessPointParameters defines the desired state of AccessPoint
#AccessPointParameters: {
	// Region is which region the AccessPoint will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The operating system user and group applied to all file system requests made
	// using the access point.
	posixUser?: null | #PosixUser @go(PosixUser,*PosixUser)

	// Specifies the directory on the Amazon EFS file system that the access point
	// exposes as the root directory of your file system to NFS clients using the
	// access point. The clients using the access point can only access the root
	// directory and below. If the RootDirectory > Path specified does not exist,
	// EFS creates it and applies the CreationInfo settings when a client connects
	// to an access point. When specifying a RootDirectory, you must provide the
	// Path, and the CreationInfo.
	//
	// Amazon EFS creates a root directory only if you have provided the CreationInfo:
	// OwnUid, OwnGID, and permissions for the directory. If you do not provide
	// this information, Amazon EFS does not create the root directory. If the root
	// directory does not exist, attempts to mount using the access point will fail.
	rootDirectory?: null | #RootDirectory @go(RootDirectory,*RootDirectory)

	// Creates tags associated with the access point. Each tag is a key-value pair,
	// each key must be unique. For more information, see Tagging Amazon Web Services
	// resources (https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html)
	// in the Amazon Web Services General Reference Guide.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	#CustomAccessPointParameters
}

// AccessPointSpec defines the desired state of AccessPoint
#AccessPointSpec: {
	forProvider: #AccessPointParameters @go(ForProvider)
}

// AccessPointObservation defines the observed state of AccessPoint
#AccessPointObservation: {
	// The unique Amazon Resource Name (ARN) associated with the access point.
	accessPointARN?: null | string @go(AccessPointARN,*string)

	// The ID of the access point, assigned by Amazon EFS.
	accessPointID?: null | string @go(AccessPointID,*string)

	// The opaque string specified in the request to ensure idempotent creation.
	clientToken?: null | string @go(ClientToken,*string)

	// The ID of the EFS file system that the access point applies to.
	fileSystemID?: null | string @go(FileSystemID,*string)

	// Identifies the lifecycle phase of the access point.
	lifeCycleState?: null | string @go(LifeCycleState,*string)

	// The name of the access point. This is the value of the Name tag.
	name?: null | string @go(Name,*string)

	// Identifies the Amazon Web Services account that owns the access point resource.
	ownerID?: null | string @go(OwnerID,*string)
}

// AccessPointStatus defines the observed state of AccessPoint.
#AccessPointStatus: {
	atProvider?: #AccessPointObservation @go(AtProvider)
}

// AccessPoint is the Schema for the AccessPoints API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#AccessPoint: {
	spec:    #AccessPointSpec   @go(Spec)
	status?: #AccessPointStatus @go(Status)
}

// AccessPointList contains a list of AccessPoints
#AccessPointList: {
	items: [...#AccessPoint] @go(Items,[]AccessPoint)
}
