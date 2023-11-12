// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/rds/v1beta1

package v1beta1

#SnapshotObservation: {
	// Specifies the allocated storage size in gigabytes (GB).
	allocatedStorage?: null | float64 @go(AllocatedStorage,*float64)

	// Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// The DB Instance Identifier from which to take the snapshot.
	dbInstanceIdentifier?: null | string @go(DBInstanceIdentifier,*string)

	// The Amazon Resource Name (ARN) for the DB snapshot.
	dbSnapshotArn?: null | string @go(DBSnapshotArn,*string)

	// Specifies whether the DB snapshot is encrypted.
	encrypted?: null | bool @go(Encrypted,*bool)

	// Specifies the name of the database engine.
	engine?: null | string @go(Engine,*string)

	// Specifies the version of the database engine.
	engineVersion?: null | string @go(EngineVersion,*string)
	id?:            null | string @go(ID,*string)

	// Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
	iops?: null | float64 @go(Iops,*float64)

	// The ARN for the KMS encryption key.
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// License model information for the restored DB instance.
	licenseModel?: null | string @go(LicenseModel,*string)

	// Provides the option group name for the DB snapshot.
	optionGroupName?: null | string  @go(OptionGroupName,*string)
	port?:            null | float64 @go(Port,*float64)
	snapshotType?:    null | string  @go(SnapshotType,*string)

	// The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.
	sourceDbSnapshotIdentifier?: null | string @go(SourceDBSnapshotIdentifier,*string)

	// The region that the DB snapshot was created in or copied from.
	sourceRegion?: null | string @go(SourceRegion,*string)

	// Specifies the status of this DB snapshot.
	status?: null | string @go(Status,*string)

	// Specifies the storage type associated with DB snapshot.
	storageType?: null | string @go(StorageType,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Provides the VPC ID associated with the DB snapshot.
	vpcId?: null | string @go(VPCID,*string)
}

#SnapshotParameters: {
	// The DB Instance Identifier from which to take the snapshot.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/rds/v1beta1.Instance
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dbInstanceIdentifier?: null | string @go(DBInstanceIdentifier,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// SnapshotSpec defines the desired state of Snapshot
#SnapshotSpec: {
	forProvider: #SnapshotParameters @go(ForProvider)
}

// SnapshotStatus defines the observed state of Snapshot.
#SnapshotStatus: {
	atProvider?: #SnapshotObservation @go(AtProvider)
}

// Snapshot is the Schema for the Snapshots API. Manages an RDS database instance snapshot.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Snapshot: {
	spec:    #SnapshotSpec   @go(Spec)
	status?: #SnapshotStatus @go(Status)
}

// SnapshotList contains a list of Snapshots
#SnapshotList: {
	items: [...#Snapshot] @go(Items,[]Snapshot)
}
