// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#ImageEncryptionKeyInitParameters: {
	// The self link of the encryption key that is stored in Google Cloud
	// KMS.
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account being used for the encryption request for the
	// given KMS key. If absent, the Compute Engine default service
	// account is used.
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)
}

#ImageEncryptionKeyObservation: {
	// The self link of the encryption key that is stored in Google Cloud
	// KMS.
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account being used for the encryption request for the
	// given KMS key. If absent, the Compute Engine default service
	// account is used.
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)
}

#ImageEncryptionKeyParameters: {
	// The self link of the encryption key that is stored in Google Cloud
	// KMS.
	// +kubebuilder:validation:Optional
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account being used for the encryption request for the
	// given KMS key. If absent, the Compute Engine default service
	// account is used.
	// +kubebuilder:validation:Optional
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)
}

#ImageGuestOsFeaturesInitParameters: {
	// The type of supported feature. Read Enabling guest operating system features to see a list of available options.
	// Possible values are: MULTI_IP_SUBNET, SECURE_BOOT, SEV_CAPABLE, UEFI_COMPATIBLE, VIRTIO_SCSI_MULTIQUEUE, WINDOWS, GVNIC, SEV_LIVE_MIGRATABLE, SEV_SNP_CAPABLE, SUSPEND_RESUME_COMPATIBLE, TDX_CAPABLE.
	type?: null | string @go(Type,*string)
}

#ImageGuestOsFeaturesObservation: {
	// The type of supported feature. Read Enabling guest operating system features to see a list of available options.
	// Possible values are: MULTI_IP_SUBNET, SECURE_BOOT, SEV_CAPABLE, UEFI_COMPATIBLE, VIRTIO_SCSI_MULTIQUEUE, WINDOWS, GVNIC, SEV_LIVE_MIGRATABLE, SEV_SNP_CAPABLE, SUSPEND_RESUME_COMPATIBLE, TDX_CAPABLE.
	type?: null | string @go(Type,*string)
}

#ImageGuestOsFeaturesParameters: {
	// The type of supported feature. Read Enabling guest operating system features to see a list of available options.
	// Possible values are: MULTI_IP_SUBNET, SECURE_BOOT, SEV_CAPABLE, UEFI_COMPATIBLE, VIRTIO_SCSI_MULTIQUEUE, WINDOWS, GVNIC, SEV_LIVE_MIGRATABLE, SEV_SNP_CAPABLE, SUSPEND_RESUME_COMPATIBLE, TDX_CAPABLE.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#ImageInitParameters: {
	// An optional description of this resource. Provide this property when
	// you create the resource.
	description?: null | string @go(Description,*string)

	// Size of the image when restored onto a persistent disk (in GB).
	diskSizeGb?: null | float64 @go(DiskSizeGb,*float64)

	// The name of the image family to which this image belongs. You can
	// create disks by specifying an image family instead of a specific
	// image name. The image family always returns its latest image that is
	// not deprecated. The name of the image family must comply with
	// RFC1035.
	family?: null | string @go(Family,*string)

	// A list of features to enable on the guest operating system.
	// Applicable only for bootable images.
	// Structure is documented below.
	guestOsFeatures?: [...#ImageGuestOsFeaturesInitParameters] @go(GuestOsFeatures,[]ImageGuestOsFeaturesInitParameters)

	// Encrypts the image using a customer-supplied encryption key.
	// After you encrypt an image with a customer-supplied key, you must
	// provide the same key if you use the image later (e.g. to create a
	// disk from the image)
	// Structure is documented below.
	imageEncryptionKey?: [...#ImageEncryptionKeyInitParameters] @go(ImageEncryptionKey,[]ImageEncryptionKeyInitParameters)

	// Labels to apply to this Image.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Any applicable license URI.
	licenses?: [...null | string] @go(Licenses,[]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The parameters of the raw disk image.
	// Structure is documented below.
	rawDisk?: [...#RawDiskInitParameters] @go(RawDisk,[]RawDiskInitParameters)

	// The source disk to create this image based on.
	// You must provide either this property or the
	// rawDisk.source property but not both to create an image.
	sourceDisk?: null | string @go(SourceDisk,*string)

	// URL of the source image used to create this image. In order to create an image, you must provide the full or partial
	// URL of one of the following:
	sourceImage?: null | string @go(SourceImage,*string)

	// URL of the source snapshot used to create this image.
	// In order to create an image, you must provide the full or partial URL of one of the following:
	sourceSnapshot?: null | string @go(SourceSnapshot,*string)

	// Cloud Storage bucket storage location of the image
	// (regional or multi-regional).
	// Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images
	storageLocations?: [...null | string] @go(StorageLocations,[]*string)
}

#ImageObservation: {
	// Size of the image tar.gz archive stored in Google Cloud Storage (in
	// bytes).
	archiveSizeBytes?: null | float64 @go(ArchiveSizeBytes,*float64)

	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	description?: null | string @go(Description,*string)

	// Size of the image when restored onto a persistent disk (in GB).
	diskSizeGb?: null | float64 @go(DiskSizeGb,*float64)

	// The name of the image family to which this image belongs. You can
	// create disks by specifying an image family instead of a specific
	// image name. The image family always returns its latest image that is
	// not deprecated. The name of the image family must comply with
	// RFC1035.
	family?: null | string @go(Family,*string)

	// A list of features to enable on the guest operating system.
	// Applicable only for bootable images.
	// Structure is documented below.
	guestOsFeatures?: [...#ImageGuestOsFeaturesObservation] @go(GuestOsFeatures,[]ImageGuestOsFeaturesObservation)

	// an identifier for the resource with format projects/{{project}}/global/images/{{name}}
	id?: null | string @go(ID,*string)

	// Encrypts the image using a customer-supplied encryption key.
	// After you encrypt an image with a customer-supplied key, you must
	// provide the same key if you use the image later (e.g. to create a
	// disk from the image)
	// Structure is documented below.
	imageEncryptionKey?: [...#ImageEncryptionKeyObservation] @go(ImageEncryptionKey,[]ImageEncryptionKeyObservation)

	// The fingerprint used for optimistic locking of this resource. Used
	// internally during updates.
	labelFingerprint?: null | string @go(LabelFingerprint,*string)

	// Labels to apply to this Image.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Any applicable license URI.
	licenses?: [...null | string] @go(Licenses,[]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The parameters of the raw disk image.
	// Structure is documented below.
	rawDisk?: [...#RawDiskObservation] @go(RawDisk,[]RawDiskObservation)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// The source disk to create this image based on.
	// You must provide either this property or the
	// rawDisk.source property but not both to create an image.
	sourceDisk?: null | string @go(SourceDisk,*string)

	// URL of the source image used to create this image. In order to create an image, you must provide the full or partial
	// URL of one of the following:
	sourceImage?: null | string @go(SourceImage,*string)

	// URL of the source snapshot used to create this image.
	// In order to create an image, you must provide the full or partial URL of one of the following:
	sourceSnapshot?: null | string @go(SourceSnapshot,*string)

	// Cloud Storage bucket storage location of the image
	// (regional or multi-regional).
	// Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images
	storageLocations?: [...null | string] @go(StorageLocations,[]*string)
}

#ImageParameters: {
	// An optional description of this resource. Provide this property when
	// you create the resource.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Size of the image when restored onto a persistent disk (in GB).
	// +kubebuilder:validation:Optional
	diskSizeGb?: null | float64 @go(DiskSizeGb,*float64)

	// The name of the image family to which this image belongs. You can
	// create disks by specifying an image family instead of a specific
	// image name. The image family always returns its latest image that is
	// not deprecated. The name of the image family must comply with
	// RFC1035.
	// +kubebuilder:validation:Optional
	family?: null | string @go(Family,*string)

	// A list of features to enable on the guest operating system.
	// Applicable only for bootable images.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	guestOsFeatures?: [...#ImageGuestOsFeaturesParameters] @go(GuestOsFeatures,[]ImageGuestOsFeaturesParameters)

	// Encrypts the image using a customer-supplied encryption key.
	// After you encrypt an image with a customer-supplied key, you must
	// provide the same key if you use the image later (e.g. to create a
	// disk from the image)
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	imageEncryptionKey?: [...#ImageEncryptionKeyParameters] @go(ImageEncryptionKey,[]ImageEncryptionKeyParameters)

	// Labels to apply to this Image.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Any applicable license URI.
	// +kubebuilder:validation:Optional
	licenses?: [...null | string] @go(Licenses,[]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The parameters of the raw disk image.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	rawDisk?: [...#RawDiskParameters] @go(RawDisk,[]RawDiskParameters)

	// The source disk to create this image based on.
	// You must provide either this property or the
	// rawDisk.source property but not both to create an image.
	// +kubebuilder:validation:Optional
	sourceDisk?: null | string @go(SourceDisk,*string)

	// URL of the source image used to create this image. In order to create an image, you must provide the full or partial
	// URL of one of the following:
	// +kubebuilder:validation:Optional
	sourceImage?: null | string @go(SourceImage,*string)

	// URL of the source snapshot used to create this image.
	// In order to create an image, you must provide the full or partial URL of one of the following:
	// +kubebuilder:validation:Optional
	sourceSnapshot?: null | string @go(SourceSnapshot,*string)

	// Cloud Storage bucket storage location of the image
	// (regional or multi-regional).
	// Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images
	// +kubebuilder:validation:Optional
	storageLocations?: [...null | string] @go(StorageLocations,[]*string)
}

#RawDiskInitParameters: {
	// The format used to encode and transmit the block device, which
	// should be TAR. This is just a container and transmission format
	// and not a runtime format. Provided by the client when the disk
	// image is created.
	// Default value is TAR.
	// Possible values are: TAR.
	containerType?: null | string @go(ContainerType,*string)

	// An optional SHA1 checksum of the disk image before unpackaging.
	// This is provided by the client when the disk image is created.
	sha1?: null | string @go(Sha1,*string)

	// The full Google Cloud Storage URL where disk storage is stored
	// You must provide either this property or the sourceDisk property
	// but not both.
	source?: null | string @go(Source,*string)
}

#RawDiskObservation: {
	// The format used to encode and transmit the block device, which
	// should be TAR. This is just a container and transmission format
	// and not a runtime format. Provided by the client when the disk
	// image is created.
	// Default value is TAR.
	// Possible values are: TAR.
	containerType?: null | string @go(ContainerType,*string)

	// An optional SHA1 checksum of the disk image before unpackaging.
	// This is provided by the client when the disk image is created.
	sha1?: null | string @go(Sha1,*string)

	// The full Google Cloud Storage URL where disk storage is stored
	// You must provide either this property or the sourceDisk property
	// but not both.
	source?: null | string @go(Source,*string)
}

#RawDiskParameters: {
	// The format used to encode and transmit the block device, which
	// should be TAR. This is just a container and transmission format
	// and not a runtime format. Provided by the client when the disk
	// image is created.
	// Default value is TAR.
	// Possible values are: TAR.
	// +kubebuilder:validation:Optional
	containerType?: null | string @go(ContainerType,*string)

	// An optional SHA1 checksum of the disk image before unpackaging.
	// This is provided by the client when the disk image is created.
	// +kubebuilder:validation:Optional
	sha1?: null | string @go(Sha1,*string)

	// The full Google Cloud Storage URL where disk storage is stored
	// You must provide either this property or the sourceDisk property
	// but not both.
	// +kubebuilder:validation:Optional
	source?: null | string @go(Source,*string)
}

// ImageSpec defines the desired state of Image
#ImageSpec: {
	forProvider: #ImageParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #ImageInitParameters @go(InitProvider)
}

// ImageStatus defines the observed state of Image.
#ImageStatus: {
	atProvider?: #ImageObservation @go(AtProvider)
}

// Image is the Schema for the Images API. Represents an Image resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Image: {
	spec:    #ImageSpec   @go(Spec)
	status?: #ImageStatus @go(Status)
}

// ImageList contains a list of Images
#ImageList: {
	items: [...#Image] @go(Items,[]Image)
}
