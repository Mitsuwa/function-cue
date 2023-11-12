// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#EBSSnapshotObservation: {
	// Amazon Resource Name (ARN) of the EBS Snapshot.
	arn?: null | string @go(Arn,*string)

	// The data encryption key identifier for the snapshot.
	dataEncryptionKeyId?: null | string @go(DataEncryptionKeyID,*string)

	// Whether the snapshot is encrypted.
	encrypted?: null | bool @go(Encrypted,*bool)

	// The snapshot ID (e.g., snap-59fcb34e).
	id?: null | string @go(ID,*string)

	// The ARN for the KMS encryption key.
	kmsKeyId?: null | string @go(KMSKeyID,*string)

	// Value from an Amazon-maintained list (amazon, aws-marketplace, microsoft) of snapshot owners.
	ownerAlias?: null | string @go(OwnerAlias,*string)

	// The AWS account ID of the EBS snapshot owner.
	ownerId?: null | string @go(OwnerID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// The size of the drive in GiBs.
	volumeSize?: null | float64 @go(VolumeSize,*float64)
}

#EBSSnapshotParameters: {
	// A description of what the snapshot is.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot.
	// +kubebuilder:validation:Optional
	outpostArn?: null | string @go(OutpostArn,*string)

	// Indicates whether to permanently restore an archived snapshot.
	// +kubebuilder:validation:Optional
	permanentRestore?: null | bool @go(PermanentRestore,*bool)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The name of the storage tier. Valid values are archive and standard. Default value is standard.
	// +kubebuilder:validation:Optional
	storageTier?: null | string @go(StorageTier,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
	// +kubebuilder:validation:Optional
	temporaryRestoreDays?: null | float64 @go(TemporaryRestoreDays,*float64)

	// The Volume ID of which to make a snapshot.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.EBSVolume
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	volumeId?: null | string @go(VolumeID,*string)
}

// EBSSnapshotSpec defines the desired state of EBSSnapshot
#EBSSnapshotSpec: {
	forProvider: #EBSSnapshotParameters @go(ForProvider)
}

// EBSSnapshotStatus defines the observed state of EBSSnapshot.
#EBSSnapshotStatus: {
	atProvider?: #EBSSnapshotObservation @go(AtProvider)
}

// EBSSnapshot is the Schema for the EBSSnapshots API. Provides an elastic block storage snapshot resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#EBSSnapshot: {
	spec:    #EBSSnapshotSpec   @go(Spec)
	status?: #EBSSnapshotStatus @go(Status)
}

// EBSSnapshotList contains a list of EBSSnapshots
#EBSSnapshotList: {
	items: [...#EBSSnapshot] @go(Items,[]EBSSnapshot)
}
