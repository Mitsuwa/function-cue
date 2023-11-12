// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/compute/v1beta1

package v1beta1

#DataDiskInitParameters: {
	// Specifies the URI in Azure storage of the blob that you want to use to create the image.
	blobUri?: null | string @go(BlobURI,*string)

	// Specifies the caching mode as ReadWrite, ReadOnly, or None. The default is None.
	caching?: null | string @go(Caching,*string)

	// Specifies the logical unit number of the data disk.
	lun?: null | float64 @go(Lun,*float64)

	// Specifies the ID of the managed disk resource that you want to use to create the image. Changing this forces a new resource to be created.
	managedDiskId?: null | string @go(ManagedDiskID,*string)

	// Specifies the size of the image to be created. The target size can't be smaller than the source size.
	sizeGb?: null | float64 @go(SizeGb,*float64)
}

#DataDiskObservation: {
	// Specifies the URI in Azure storage of the blob that you want to use to create the image.
	blobUri?: null | string @go(BlobURI,*string)

	// Specifies the caching mode as ReadWrite, ReadOnly, or None. The default is None.
	caching?: null | string @go(Caching,*string)

	// Specifies the logical unit number of the data disk.
	lun?: null | float64 @go(Lun,*float64)

	// Specifies the ID of the managed disk resource that you want to use to create the image. Changing this forces a new resource to be created.
	managedDiskId?: null | string @go(ManagedDiskID,*string)

	// Specifies the size of the image to be created. The target size can't be smaller than the source size.
	sizeGb?: null | float64 @go(SizeGb,*float64)
}

#DataDiskParameters: {
	// Specifies the URI in Azure storage of the blob that you want to use to create the image.
	// +kubebuilder:validation:Optional
	blobUri?: null | string @go(BlobURI,*string)

	// Specifies the caching mode as ReadWrite, ReadOnly, or None. The default is None.
	// +kubebuilder:validation:Optional
	caching?: null | string @go(Caching,*string)

	// Specifies the logical unit number of the data disk.
	// +kubebuilder:validation:Optional
	lun?: null | float64 @go(Lun,*float64)

	// Specifies the ID of the managed disk resource that you want to use to create the image. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	managedDiskId?: null | string @go(ManagedDiskID,*string)

	// Specifies the size of the image to be created. The target size can't be smaller than the source size.
	// +kubebuilder:validation:Optional
	sizeGb?: null | float64 @go(SizeGb,*float64)
}

#ImageInitParameters: {
	// One or more data_disk elements as defined below.
	dataDisk?: [...#DataDiskInitParameters] @go(DataDisk,[]DataDiskInitParameters)

	// The HyperVGenerationType of the VirtualMachine created from the image as V1, V2. The default is V1. Changing this forces a new resource to be created.
	hyperVGeneration?: null | string @go(HyperVGeneration,*string)

	// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// One or more os_disk elements as defined below. Changing this forces a new resource to be created.
	osDisk?: [...#OsDiskInitParameters] @go(OsDisk,[]OsDiskInitParameters)

	// The Virtual Machine ID from which to create the image.
	sourceVirtualMachineId?: null | string @go(SourceVirtualMachineID,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Is zone resiliency enabled? Defaults to false. Changing this forces a new resource to be created.
	zoneResilient?: null | bool @go(ZoneResilient,*bool)
}

#ImageObservation: {
	// One or more data_disk elements as defined below.
	dataDisk?: [...#DataDiskObservation] @go(DataDisk,[]DataDiskObservation)

	// The HyperVGenerationType of the VirtualMachine created from the image as V1, V2. The default is V1. Changing this forces a new resource to be created.
	hyperVGeneration?: null | string @go(HyperVGeneration,*string)

	// The ID of the Image.
	id?: null | string @go(ID,*string)

	// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// One or more os_disk elements as defined below. Changing this forces a new resource to be created.
	osDisk?: [...#OsDiskObservation] @go(OsDisk,[]OsDiskObservation)

	// The name of the resource group in which to create. Changing this forces a new resource to be created.
	// the image. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Virtual Machine ID from which to create the image.
	sourceVirtualMachineId?: null | string @go(SourceVirtualMachineID,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Is zone resiliency enabled? Defaults to false. Changing this forces a new resource to be created.
	zoneResilient?: null | bool @go(ZoneResilient,*bool)
}

#ImageParameters: {
	// One or more data_disk elements as defined below.
	// +kubebuilder:validation:Optional
	dataDisk?: [...#DataDiskParameters] @go(DataDisk,[]DataDiskParameters)

	// The HyperVGenerationType of the VirtualMachine created from the image as V1, V2. The default is V1. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	hyperVGeneration?: null | string @go(HyperVGeneration,*string)

	// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// One or more os_disk elements as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	osDisk?: [...#OsDiskParameters] @go(OsDisk,[]OsDiskParameters)

	// The name of the resource group in which to create. Changing this forces a new resource to be created.
	// the image. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Virtual Machine ID from which to create the image.
	// +kubebuilder:validation:Optional
	sourceVirtualMachineId?: null | string @go(SourceVirtualMachineID,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Is zone resiliency enabled? Defaults to false. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	zoneResilient?: null | bool @go(ZoneResilient,*bool)
}

#OsDiskInitParameters: {
	// Specifies the URI in Azure storage of the blob that you want to use to create the image. Changing this forces a new resource to be created.
	blobUri?: null | string @go(BlobURI,*string)

	// Specifies the caching mode as ReadWrite, ReadOnly, or None. The default is None.
	caching?: null | string @go(Caching,*string)

	// Specifies the ID of the managed disk resource that you want to use to create the image.
	managedDiskId?: null | string @go(ManagedDiskID,*string)

	// Specifies the state of the operating system contained in the blob. Currently, the only value is Generalized. Possible values are Generalized and Specialized.
	osState?: null | string @go(OsState,*string)

	// Specifies the type of operating system contained in the virtual machine image. Possible values are: Windows or Linux.
	osType?: null | string @go(OsType,*string)

	// Specifies the size of the image to be created. The target size can't be smaller than the source size.
	sizeGb?: null | float64 @go(SizeGb,*float64)
}

#OsDiskObservation: {
	// Specifies the URI in Azure storage of the blob that you want to use to create the image. Changing this forces a new resource to be created.
	blobUri?: null | string @go(BlobURI,*string)

	// Specifies the caching mode as ReadWrite, ReadOnly, or None. The default is None.
	caching?: null | string @go(Caching,*string)

	// Specifies the ID of the managed disk resource that you want to use to create the image.
	managedDiskId?: null | string @go(ManagedDiskID,*string)

	// Specifies the state of the operating system contained in the blob. Currently, the only value is Generalized. Possible values are Generalized and Specialized.
	osState?: null | string @go(OsState,*string)

	// Specifies the type of operating system contained in the virtual machine image. Possible values are: Windows or Linux.
	osType?: null | string @go(OsType,*string)

	// Specifies the size of the image to be created. The target size can't be smaller than the source size.
	sizeGb?: null | float64 @go(SizeGb,*float64)
}

#OsDiskParameters: {
	// Specifies the URI in Azure storage of the blob that you want to use to create the image. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	blobUri?: null | string @go(BlobURI,*string)

	// Specifies the caching mode as ReadWrite, ReadOnly, or None. The default is None.
	// +kubebuilder:validation:Optional
	caching?: null | string @go(Caching,*string)

	// Specifies the ID of the managed disk resource that you want to use to create the image.
	// +kubebuilder:validation:Optional
	managedDiskId?: null | string @go(ManagedDiskID,*string)

	// Specifies the state of the operating system contained in the blob. Currently, the only value is Generalized. Possible values are Generalized and Specialized.
	// +kubebuilder:validation:Optional
	osState?: null | string @go(OsState,*string)

	// Specifies the type of operating system contained in the virtual machine image. Possible values are: Windows or Linux.
	// +kubebuilder:validation:Optional
	osType?: null | string @go(OsType,*string)

	// Specifies the size of the image to be created. The target size can't be smaller than the source size.
	// +kubebuilder:validation:Optional
	sizeGb?: null | float64 @go(SizeGb,*float64)
}

// ImageSpec defines the desired state of Image
#ImageSpec: {
	forProvider: #ImageParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
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

// Image is the Schema for the Images API. Manages a custom virtual machine image that can be used to create virtual machines.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Image: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	spec:    #ImageSpec   @go(Spec)
	status?: #ImageStatus @go(Status)
}

// ImageList contains a list of Images
#ImageList: {
	items: [...#Image] @go(Items,[]Image)
}
