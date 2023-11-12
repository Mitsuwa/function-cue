// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#AsyncPrimaryDiskInitParameters: {
}

#AsyncPrimaryDiskObservation: {
	// Primary disk for asynchronous disk replication.
	disk?: null | string @go(Disk,*string)
}

#AsyncPrimaryDiskParameters: {
	// Primary disk for asynchronous disk replication.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Disk
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	disk?: null | string @go(Disk,*string)
}

#DiskEncryptionKeyInitParameters: {
	// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
	// in the cloud console. Your project's Compute Engine System service account
	// (service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com) must have
	// roles/cloudkms.cryptoKeyEncrypterDecrypter to use this feature.
	// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account used for the encryption request for the given KMS key.
	// If absent, the Compute Engine Service Agent service account is used.
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)
}

#DiskEncryptionKeyObservation: {
	// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
	// in the cloud console. Your project's Compute Engine System service account
	// (service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com) must have
	// roles/cloudkms.cryptoKeyEncrypterDecrypter to use this feature.
	// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account used for the encryption request for the given KMS key.
	// If absent, the Compute Engine Service Agent service account is used.
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)

	// (Output)
	// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
	// encryption key that protects this resource.
	sha256?: null | string @go(Sha256,*string)
}

#DiskEncryptionKeyParameters: {
	// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
	// in the cloud console. Your project's Compute Engine System service account
	// (service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com) must have
	// roles/cloudkms.cryptoKeyEncrypterDecrypter to use this feature.
	// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
	// +kubebuilder:validation:Optional
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account used for the encryption request for the given KMS key.
	// If absent, the Compute Engine Service Agent service account is used.
	// +kubebuilder:validation:Optional
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)
}

#DiskInitParameters: {
	// A nested object resource
	// Structure is documented below.
	asyncPrimaryDisk?: [...#AsyncPrimaryDiskInitParameters] @go(AsyncPrimaryDisk,[]AsyncPrimaryDiskInitParameters)

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
	diskEncryptionKey?: [...#DiskEncryptionKeyInitParameters] @go(DiskEncryptionKey,[]DiskEncryptionKeyInitParameters)

	// A list of features to enable on the guest operating system.
	// Applicable only for bootable disks.
	// Structure is documented below.
	guestOsFeatures?: [...#GuestOsFeaturesInitParameters] @go(GuestOsFeatures,[]GuestOsFeaturesInitParameters)

	// The image from which to initialize this disk. This can be
	// one of: the image's self_link, projects/{project}/global/images/{image},
	// projects/{project}/global/images/family/{family}, global/images/{image},
	// global/images/family/{family}, family/{family}, {project}/{family},
	// {project}/{image}, {family}, or {image}. If referred by family, the
	// images names must include the family name. If they don't, use the
	// google_compute_image data source.
	// For instance, the image centos-6-v20180104 includes its family name centos-6.
	// These images can be referred by family name here.
	image?: null | string @go(Image,*string)

	// Labels to apply to this disk.  A list of key->value pairs.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Any applicable license URI.
	licenses?: [...null | string] @go(Licenses,[]*string)

	// Physical block size of the persistent disk, in bytes. If not present
	// in a request, a default value is used. Currently supported sizes
	// are 4096 and 16384, other sizes may be added in the future.
	// If an unsupported value is requested, the error message will list
	// the supported values for the caller's project.
	physicalBlockSizeBytes?: null | float64 @go(PhysicalBlockSizeBytes,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Indicates how many IOPS must be provisioned for the disk.
	// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
	// allows for an update of IOPS every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
	provisionedIops?: null | float64 @go(ProvisionedIops,*float64)

	// Indicates how much Throughput must be provisioned for the disk.
	// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
	// allows for an update of Throughput every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
	provisionedThroughput?: null | float64 @go(ProvisionedThroughput,*float64)

	// Size of the persistent disk, specified in GB. You can specify this
	// field when creating a persistent disk using the image or
	// snapshot parameter, or specify it alone to create an empty
	// persistent disk.
	// If you specify this field along with image or snapshot,
	// the value must not be less than the size of the image
	// or the size of the snapshot.
	// You can add lifecycle.prevent_destroy in the config to prevent destroying
	// and recreating.
	size?: null | float64 @go(Size,*float64)

	// The source snapshot used to create this disk. You can provide this as
	// a partial or full URL to the resource. If the snapshot is in another
	// project than this disk, you must supply a full URL. For example, the
	// following are valid values:
	snapshot?: null | string @go(Snapshot,*string)

	// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
	// For example, the following are valid values:
	sourceDisk?: null | string @go(SourceDisk,*string)

	// The customer-supplied encryption key of the source image. Required if
	// the source image is protected by a customer-supplied encryption key.
	// Structure is documented below.
	sourceImageEncryptionKey?: [...#SourceImageEncryptionKeyInitParameters] @go(SourceImageEncryptionKey,[]SourceImageEncryptionKeyInitParameters)

	// The customer-supplied encryption key of the source snapshot. Required
	// if the source snapshot is protected by a customer-supplied encryption
	// key.
	// Structure is documented below.
	sourceSnapshotEncryptionKey?: [...#SourceSnapshotEncryptionKeyInitParameters] @go(SourceSnapshotEncryptionKey,[]SourceSnapshotEncryptionKeyInitParameters)

	// URL of the disk type resource describing which disk type to use to
	// create the disk. Provide this when creating the disk.
	type?: null | string @go(Type,*string)
}

#DiskObservation: {
	// A nested object resource
	// Structure is documented below.
	asyncPrimaryDisk?: [...#AsyncPrimaryDiskObservation] @go(AsyncPrimaryDisk,[]AsyncPrimaryDiskObservation)

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
	diskEncryptionKey?: [...#DiskEncryptionKeyObservation] @go(DiskEncryptionKey,[]DiskEncryptionKeyObservation)

	// A list of features to enable on the guest operating system.
	// Applicable only for bootable disks.
	// Structure is documented below.
	guestOsFeatures?: [...#GuestOsFeaturesObservation] @go(GuestOsFeatures,[]GuestOsFeaturesObservation)

	// an identifier for the resource with format projects/{{project}}/zones/{{zone}}/disks/{{name}}
	id?: null | string @go(ID,*string)

	// The image from which to initialize this disk. This can be
	// one of: the image's self_link, projects/{project}/global/images/{image},
	// projects/{project}/global/images/family/{family}, global/images/{image},
	// global/images/family/{family}, family/{family}, {project}/{family},
	// {project}/{image}, {family}, or {image}. If referred by family, the
	// images names must include the family name. If they don't, use the
	// google_compute_image data source.
	// For instance, the image centos-6-v20180104 includes its family name centos-6.
	// These images can be referred by family name here.
	image?: null | string @go(Image,*string)

	// The fingerprint used for optimistic locking of this resource.  Used
	// internally during updates.
	labelFingerprint?: null | string @go(LabelFingerprint,*string)

	// Labels to apply to this disk.  A list of key->value pairs.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Last attach timestamp in RFC3339 text format.
	lastAttachTimestamp?: null | string @go(LastAttachTimestamp,*string)

	// Last detach timestamp in RFC3339 text format.
	lastDetachTimestamp?: null | string @go(LastDetachTimestamp,*string)

	// Any applicable license URI.
	licenses?: [...null | string] @go(Licenses,[]*string)

	// Physical block size of the persistent disk, in bytes. If not present
	// in a request, a default value is used. Currently supported sizes
	// are 4096 and 16384, other sizes may be added in the future.
	// If an unsupported value is requested, the error message will list
	// the supported values for the caller's project.
	physicalBlockSizeBytes?: null | float64 @go(PhysicalBlockSizeBytes,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Indicates how many IOPS must be provisioned for the disk.
	// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
	// allows for an update of IOPS every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
	provisionedIops?: null | float64 @go(ProvisionedIops,*float64)

	// Indicates how much Throughput must be provisioned for the disk.
	// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
	// allows for an update of Throughput every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
	provisionedThroughput?: null | float64 @go(ProvisionedThroughput,*float64)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// Size of the persistent disk, specified in GB. You can specify this
	// field when creating a persistent disk using the image or
	// snapshot parameter, or specify it alone to create an empty
	// persistent disk.
	// If you specify this field along with image or snapshot,
	// the value must not be less than the size of the image
	// or the size of the snapshot.
	// You can add lifecycle.prevent_destroy in the config to prevent destroying
	// and recreating.
	size?: null | float64 @go(Size,*float64)

	// The source snapshot used to create this disk. You can provide this as
	// a partial or full URL to the resource. If the snapshot is in another
	// project than this disk, you must supply a full URL. For example, the
	// following are valid values:
	snapshot?: null | string @go(Snapshot,*string)

	// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
	// For example, the following are valid values:
	sourceDisk?: null | string @go(SourceDisk,*string)

	// The ID value of the disk used to create this image. This value may
	// be used to determine whether the image was taken from the current
	// or a previous instance of a given disk name.
	sourceDiskId?: null | string @go(SourceDiskID,*string)

	// The customer-supplied encryption key of the source image. Required if
	// the source image is protected by a customer-supplied encryption key.
	// Structure is documented below.
	sourceImageEncryptionKey?: [...#SourceImageEncryptionKeyObservation] @go(SourceImageEncryptionKey,[]SourceImageEncryptionKeyObservation)

	// The ID value of the image used to create this disk. This value
	// identifies the exact image that was used to create this persistent
	// disk. For example, if you created the persistent disk from an image
	// that was later deleted and recreated under the same name, the source
	// image ID would identify the exact version of the image that was used.
	sourceImageId?: null | string @go(SourceImageID,*string)

	// The customer-supplied encryption key of the source snapshot. Required
	// if the source snapshot is protected by a customer-supplied encryption
	// key.
	// Structure is documented below.
	sourceSnapshotEncryptionKey?: [...#SourceSnapshotEncryptionKeyObservation] @go(SourceSnapshotEncryptionKey,[]SourceSnapshotEncryptionKeyObservation)

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

	// A reference to the zone where the disk resides.
	zone?: null | string @go(Zone,*string)
}

#DiskParameters: {
	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	asyncPrimaryDisk?: [...#AsyncPrimaryDiskParameters] @go(AsyncPrimaryDisk,[]AsyncPrimaryDiskParameters)

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
	diskEncryptionKey?: [...#DiskEncryptionKeyParameters] @go(DiskEncryptionKey,[]DiskEncryptionKeyParameters)

	// A list of features to enable on the guest operating system.
	// Applicable only for bootable disks.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	guestOsFeatures?: [...#GuestOsFeaturesParameters] @go(GuestOsFeatures,[]GuestOsFeaturesParameters)

	// The image from which to initialize this disk. This can be
	// one of: the image's self_link, projects/{project}/global/images/{image},
	// projects/{project}/global/images/family/{family}, global/images/{image},
	// global/images/family/{family}, family/{family}, {project}/{family},
	// {project}/{image}, {family}, or {image}. If referred by family, the
	// images names must include the family name. If they don't, use the
	// google_compute_image data source.
	// For instance, the image centos-6-v20180104 includes its family name centos-6.
	// These images can be referred by family name here.
	// +kubebuilder:validation:Optional
	image?: null | string @go(Image,*string)

	// Labels to apply to this disk.  A list of key->value pairs.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Any applicable license URI.
	// +kubebuilder:validation:Optional
	licenses?: [...null | string] @go(Licenses,[]*string)

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

	// Indicates how many IOPS must be provisioned for the disk.
	// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
	// allows for an update of IOPS every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
	// +kubebuilder:validation:Optional
	provisionedIops?: null | float64 @go(ProvisionedIops,*float64)

	// Indicates how much Throughput must be provisioned for the disk.
	// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
	// allows for an update of Throughput every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
	// +kubebuilder:validation:Optional
	provisionedThroughput?: null | float64 @go(ProvisionedThroughput,*float64)

	// Size of the persistent disk, specified in GB. You can specify this
	// field when creating a persistent disk using the image or
	// snapshot parameter, or specify it alone to create an empty
	// persistent disk.
	// If you specify this field along with image or snapshot,
	// the value must not be less than the size of the image
	// or the size of the snapshot.
	// You can add lifecycle.prevent_destroy in the config to prevent destroying
	// and recreating.
	// +kubebuilder:validation:Optional
	size?: null | float64 @go(Size,*float64)

	// The source snapshot used to create this disk. You can provide this as
	// a partial or full URL to the resource. If the snapshot is in another
	// project than this disk, you must supply a full URL. For example, the
	// following are valid values:
	// +kubebuilder:validation:Optional
	snapshot?: null | string @go(Snapshot,*string)

	// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
	// For example, the following are valid values:
	// +kubebuilder:validation:Optional
	sourceDisk?: null | string @go(SourceDisk,*string)

	// The customer-supplied encryption key of the source image. Required if
	// the source image is protected by a customer-supplied encryption key.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	sourceImageEncryptionKey?: [...#SourceImageEncryptionKeyParameters] @go(SourceImageEncryptionKey,[]SourceImageEncryptionKeyParameters)

	// The customer-supplied encryption key of the source snapshot. Required
	// if the source snapshot is protected by a customer-supplied encryption
	// key.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	sourceSnapshotEncryptionKey?: [...#SourceSnapshotEncryptionKeyParameters] @go(SourceSnapshotEncryptionKey,[]SourceSnapshotEncryptionKeyParameters)

	// URL of the disk type resource describing which disk type to use to
	// create the disk. Provide this when creating the disk.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// A reference to the zone where the disk resides.
	// +kubebuilder:validation:Required
	zone?: null | string @go(Zone,*string)
}

#GuestOsFeaturesInitParameters: {
	// The type of supported feature. Read Enabling guest operating system features to see a list of available options.
	// Possible values are: MULTI_IP_SUBNET, SECURE_BOOT, SEV_CAPABLE, UEFI_COMPATIBLE, VIRTIO_SCSI_MULTIQUEUE, WINDOWS, GVNIC, SEV_LIVE_MIGRATABLE, SEV_SNP_CAPABLE, SUSPEND_RESUME_COMPATIBLE, TDX_CAPABLE.
	type?: null | string @go(Type,*string)
}

#GuestOsFeaturesObservation: {
	// The type of supported feature. Read Enabling guest operating system features to see a list of available options.
	// Possible values are: MULTI_IP_SUBNET, SECURE_BOOT, SEV_CAPABLE, UEFI_COMPATIBLE, VIRTIO_SCSI_MULTIQUEUE, WINDOWS, GVNIC, SEV_LIVE_MIGRATABLE, SEV_SNP_CAPABLE, SUSPEND_RESUME_COMPATIBLE, TDX_CAPABLE.
	type?: null | string @go(Type,*string)
}

#GuestOsFeaturesParameters: {
	// The type of supported feature. Read Enabling guest operating system features to see a list of available options.
	// Possible values are: MULTI_IP_SUBNET, SECURE_BOOT, SEV_CAPABLE, UEFI_COMPATIBLE, VIRTIO_SCSI_MULTIQUEUE, WINDOWS, GVNIC, SEV_LIVE_MIGRATABLE, SEV_SNP_CAPABLE, SUSPEND_RESUME_COMPATIBLE, TDX_CAPABLE.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#SourceImageEncryptionKeyInitParameters: {
	// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
	// in the cloud console. Your project's Compute Engine System service account
	// (service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com) must have
	// roles/cloudkms.cryptoKeyEncrypterDecrypter to use this feature.
	// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account used for the encryption request for the given KMS key.
	// If absent, the Compute Engine Service Agent service account is used.
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)

	// Specifies a 256-bit customer-supplied encryption key, encoded in
	// RFC 4648 base64 to either encrypt or decrypt this resource.
	rawKey?: null | string @go(RawKey,*string)
}

#SourceImageEncryptionKeyObservation: {
	// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
	// in the cloud console. Your project's Compute Engine System service account
	// (service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com) must have
	// roles/cloudkms.cryptoKeyEncrypterDecrypter to use this feature.
	// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account used for the encryption request for the given KMS key.
	// If absent, the Compute Engine Service Agent service account is used.
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)

	// Specifies a 256-bit customer-supplied encryption key, encoded in
	// RFC 4648 base64 to either encrypt or decrypt this resource.
	rawKey?: null | string @go(RawKey,*string)

	// (Output)
	// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
	// encryption key that protects this resource.
	sha256?: null | string @go(Sha256,*string)
}

#SourceImageEncryptionKeyParameters: {
	// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
	// in the cloud console. Your project's Compute Engine System service account
	// (service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com) must have
	// roles/cloudkms.cryptoKeyEncrypterDecrypter to use this feature.
	// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
	// +kubebuilder:validation:Optional
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account used for the encryption request for the given KMS key.
	// If absent, the Compute Engine Service Agent service account is used.
	// +kubebuilder:validation:Optional
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)

	// Specifies a 256-bit customer-supplied encryption key, encoded in
	// RFC 4648 base64 to either encrypt or decrypt this resource.
	// +kubebuilder:validation:Optional
	rawKey?: null | string @go(RawKey,*string)
}

#SourceSnapshotEncryptionKeyInitParameters: {
	// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
	// in the cloud console. Your project's Compute Engine System service account
	// (service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com) must have
	// roles/cloudkms.cryptoKeyEncrypterDecrypter to use this feature.
	// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account used for the encryption request for the given KMS key.
	// If absent, the Compute Engine Service Agent service account is used.
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)

	// Specifies a 256-bit customer-supplied encryption key, encoded in
	// RFC 4648 base64 to either encrypt or decrypt this resource.
	rawKey?: null | string @go(RawKey,*string)
}

#SourceSnapshotEncryptionKeyObservation: {
	// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
	// in the cloud console. Your project's Compute Engine System service account
	// (service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com) must have
	// roles/cloudkms.cryptoKeyEncrypterDecrypter to use this feature.
	// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account used for the encryption request for the given KMS key.
	// If absent, the Compute Engine Service Agent service account is used.
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)

	// Specifies a 256-bit customer-supplied encryption key, encoded in
	// RFC 4648 base64 to either encrypt or decrypt this resource.
	rawKey?: null | string @go(RawKey,*string)

	// (Output)
	// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
	// encryption key that protects this resource.
	sha256?: null | string @go(Sha256,*string)
}

#SourceSnapshotEncryptionKeyParameters: {
	// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
	// in the cloud console. Your project's Compute Engine System service account
	// (service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com) must have
	// roles/cloudkms.cryptoKeyEncrypterDecrypter to use this feature.
	// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
	// +kubebuilder:validation:Optional
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// The service account used for the encryption request for the given KMS key.
	// If absent, the Compute Engine Service Agent service account is used.
	// +kubebuilder:validation:Optional
	kmsKeyServiceAccount?: null | string @go(KMSKeyServiceAccount,*string)

	// Specifies a 256-bit customer-supplied encryption key, encoded in
	// RFC 4648 base64 to either encrypt or decrypt this resource.
	// +kubebuilder:validation:Optional
	rawKey?: null | string @go(RawKey,*string)
}

// DiskSpec defines the desired state of Disk
#DiskSpec: {
	forProvider: #DiskParameters @go(ForProvider)

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
	initProvider?: #DiskInitParameters @go(InitProvider)
}

// DiskStatus defines the observed state of Disk.
#DiskStatus: {
	atProvider?: #DiskObservation @go(AtProvider)
}

// Disk is the Schema for the Disks API. Persistent disks are durable storage devices that function similarly to the physical disks in a desktop or a server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Disk: {
	spec:    #DiskSpec   @go(Spec)
	status?: #DiskStatus @go(Status)
}

// DiskList contains a list of Disks
#DiskList: {
	items: [...#Disk] @go(Items,[]Disk)
}
