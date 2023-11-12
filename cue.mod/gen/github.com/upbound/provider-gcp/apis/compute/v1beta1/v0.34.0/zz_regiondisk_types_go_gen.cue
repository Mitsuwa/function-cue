// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#RegionDiskDiskEncryptionKeyObservation: {
	// The name of the encryption key that is stored in Google Cloud KMS.
	kmsKeyName?: null | string @go(KMSKeyName,*string)

	// (Output)
	// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
	// encryption key that protects this resource.
	sha256?: null | string @go(Sha256,*string)
}

#RegionDiskDiskEncryptionKeyParameters: {
	// The name of the encryption key that is stored in Google Cloud KMS.
	// +kubebuilder:validation:Optional
	kmsKeyName?: null | string @go(KMSKeyName,*string)
}

#RegionDiskObservation: {
	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	description?: null | string @go(Description,*string)

	// Encrypts the disk using a customer-supplied encryption key.
	// After you encrypt a disk with a customer-supplied key, you must
	// provide the same key if you use the disk later (e.g. to create a disk
	// snapshot or an image, or to attach the disk to a virtual machine).
	// Customer-supplied encryption keys do not protect access to metadata of
	// the disk.
	// If you do not provide an encryption key when creating the disk, then
	// the disk will be encrypted using an automatically generated key and
	// you do not need to provide a key to use the disk later.
	// Structure is documented below.
	diskEncryptionKey?: [...#RegionDiskDiskEncryptionKeyObservation] @go(DiskEncryptionKey,[]RegionDiskDiskEncryptionKeyObservation)

	// an identifier for the resource with format projects/{{project}}/regions/{{region}}/disks/{{name}}
	id?: null | string @go(ID,*string)

	// The fingerprint used for optimistic locking of this resource.  Used
	// internally during updates.
	labelFingerprint?: null | string @go(LabelFingerprint,*string)

	// Labels to apply to this disk.  A list of key->value pairs.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Last attach timestamp in RFC3339 text format.
	lastAttachTimestamp?: null | string @go(LastAttachTimestamp,*string)

	// Last detach timestamp in RFC3339 text format.
	lastDetachTimestamp?: null | string @go(LastDetachTimestamp,*string)

	// Physical block size of the persistent disk, in bytes. If not present
	// in a request, a default value is used. Currently supported sizes
	// are 4096 and 16384, other sizes may be added in the future.
	// If an unsupported value is requested, the error message will list
	// the supported values for the caller's project.
	physicalBlockSizeBytes?: null | float64 @go(PhysicalBlockSizeBytes,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// A reference to the region where the disk resides.
	region?: null | string @go(Region,*string)

	// URLs of the zones where the disk should be replicated to.
	replicaZones?: [...null | string] @go(ReplicaZones,[]*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// Size of the persistent disk, specified in GB. You can specify this
	// field when creating a persistent disk using the sourceImage or
	// sourceSnapshot parameter, or specify it alone to create an empty
	// persistent disk.
	// If you specify this field along with sourceImage or sourceSnapshot,
	// the value of sizeGb must not be less than the size of the sourceImage
	// or the size of the snapshot.
	size?: null | float64 @go(Size,*float64)

	// The source snapshot used to create this disk. You can provide this as
	// a partial or full URL to the resource. For example, the following are
	// valid values:
	snapshot?: null | string @go(Snapshot,*string)

	// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
	// For example, the following are valid values:
	sourceDisk?: null | string @go(SourceDisk,*string)

	// The ID value of the disk used to create this image. This value may
	// be used to determine whether the image was taken from the current
	// or a previous instance of a given disk name.
	sourceDiskId?: null | string @go(SourceDiskID,*string)

	// The customer-supplied encryption key of the source snapshot. Required
	// if the source snapshot is protected by a customer-supplied encryption
	// key.
	// Structure is documented below.
	sourceSnapshotEncryptionKey?: [...#RegionDiskSourceSnapshotEncryptionKeyObservation] @go(SourceSnapshotEncryptionKey,[]RegionDiskSourceSnapshotEncryptionKeyObservation)

	// The unique ID of the snapshot used to create this disk. This value
	// identifies the exact snapshot that was used to create this persistent
	// disk. For example, if you created the persistent disk from a snapshot
	// that was later deleted and recreated under the same name, the source
	// snapshot ID would identify the exact version of the snapshot that was
	// used.
	sourceSnapshotId?: null | string @go(SourceSnapshotID,*string)

	// URL of the disk type resource describing which disk type to use to
	// create the disk. Provide this when creating the disk.
	type?: null | string @go(Type,*string)

	// Links to the users of the disk (attached instances) in form:
	// project/zones/zone/instances/instance
	users?: [...null | string] @go(Users,[]*string)
}

#RegionDiskParameters: {
	// An optional description of this resource. Provide this property when
	// you create the resource.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Encrypts the disk using a customer-supplied encryption key.
	// After you encrypt a disk with a customer-supplied key, you must
	// provide the same key if you use the disk later (e.g. to create a disk
	// snapshot or an image, or to attach the disk to a virtual machine).
	// Customer-supplied encryption keys do not protect access to metadata of
	// the disk.
	// If you do not provide an encryption key when creating the disk, then
	// the disk will be encrypted using an automatically generated key and
	// you do not need to provide a key to use the disk later.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	diskEncryptionKey?: [...#RegionDiskDiskEncryptionKeyParameters] @go(DiskEncryptionKey,[]RegionDiskDiskEncryptionKeyParameters)

	// Labels to apply to this disk.  A list of key->value pairs.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Physical block size of the persistent disk, in bytes. If not present
	// in a request, a default value is used. Currently supported sizes
	// are 4096 and 16384, other sizes may be added in the future.
	// If an unsupported value is requested, the error message will list
	// the supported values for the caller's project.
	// +kubebuilder:validation:Optional
	physicalBlockSizeBytes?: null | float64 @go(PhysicalBlockSizeBytes,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// A reference to the region where the disk resides.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// URLs of the zones where the disk should be replicated to.
	// +kubebuilder:validation:Optional
	replicaZones?: [...null | string] @go(ReplicaZones,[]*string)

	// Size of the persistent disk, specified in GB. You can specify this
	// field when creating a persistent disk using the sourceImage or
	// sourceSnapshot parameter, or specify it alone to create an empty
	// persistent disk.
	// If you specify this field along with sourceImage or sourceSnapshot,
	// the value of sizeGb must not be less than the size of the sourceImage
	// or the size of the snapshot.
	// +kubebuilder:validation:Optional
	size?: null | float64 @go(Size,*float64)

	// The source snapshot used to create this disk. You can provide this as
	// a partial or full URL to the resource. For example, the following are
	// valid values:
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Snapshot
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	snapshot?: null | string @go(Snapshot,*string)

	// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
	// For example, the following are valid values:
	// +kubebuilder:validation:Optional
	sourceDisk?: null | string @go(SourceDisk,*string)

	// The customer-supplied encryption key of the source snapshot. Required
	// if the source snapshot is protected by a customer-supplied encryption
	// key.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	sourceSnapshotEncryptionKey?: [...#RegionDiskSourceSnapshotEncryptionKeyParameters] @go(SourceSnapshotEncryptionKey,[]RegionDiskSourceSnapshotEncryptionKeyParameters)

	// URL of the disk type resource describing which disk type to use to
	// create the disk. Provide this when creating the disk.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#RegionDiskSourceSnapshotEncryptionKeyObservation: {
	// Specifies a 256-bit customer-supplied encryption key, encoded in
	// RFC 4648 base64 to either encrypt or decrypt this resource.
	rawKey?: null | string @go(RawKey,*string)

	// (Output)
	// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
	// encryption key that protects this resource.
	sha256?: null | string @go(Sha256,*string)
}

#RegionDiskSourceSnapshotEncryptionKeyParameters: {
	// Specifies a 256-bit customer-supplied encryption key, encoded in
	// RFC 4648 base64 to either encrypt or decrypt this resource.
	// +kubebuilder:validation:Optional
	rawKey?: null | string @go(RawKey,*string)
}

// RegionDiskSpec defines the desired state of RegionDisk
#RegionDiskSpec: {
	forProvider: #RegionDiskParameters @go(ForProvider)
}

// RegionDiskStatus defines the observed state of RegionDisk.
#RegionDiskStatus: {
	atProvider?: #RegionDiskObservation @go(AtProvider)
}

// RegionDisk is the Schema for the RegionDisks API. Persistent disks are durable storage devices that function similarly to the physical disks in a desktop or a server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#RegionDisk: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.replicaZones)",message="replicaZones is a required parameter"
	spec:    #RegionDiskSpec   @go(Spec)
	status?: #RegionDiskStatus @go(Status)
}

// RegionDiskList contains a list of RegionDisks
#RegionDiskList: {
	items: [...#RegionDisk] @go(Items,[]RegionDisk)
}
