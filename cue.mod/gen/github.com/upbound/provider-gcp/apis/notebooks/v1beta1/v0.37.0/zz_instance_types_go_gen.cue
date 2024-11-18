// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/notebooks/v1beta1

package v1beta1

#AcceleratorConfigInitParameters: {
	// Count of cores of this accelerator.
	coreCount?: null | float64 @go(CoreCount,*float64)

	// Type of this accelerator.
	// Possible values are: ACCELERATOR_TYPE_UNSPECIFIED, NVIDIA_TESLA_K80, NVIDIA_TESLA_P100, NVIDIA_TESLA_V100, NVIDIA_TESLA_P4, NVIDIA_TESLA_T4, NVIDIA_TESLA_T4_VWS, NVIDIA_TESLA_P100_VWS, NVIDIA_TESLA_P4_VWS, NVIDIA_TESLA_A100, TPU_V2, TPU_V3.
	type?: null | string @go(Type,*string)
}

#AcceleratorConfigObservation: {
	// Count of cores of this accelerator.
	coreCount?: null | float64 @go(CoreCount,*float64)

	// Type of this accelerator.
	// Possible values are: ACCELERATOR_TYPE_UNSPECIFIED, NVIDIA_TESLA_K80, NVIDIA_TESLA_P100, NVIDIA_TESLA_V100, NVIDIA_TESLA_P4, NVIDIA_TESLA_T4, NVIDIA_TESLA_T4_VWS, NVIDIA_TESLA_P100_VWS, NVIDIA_TESLA_P4_VWS, NVIDIA_TESLA_A100, TPU_V2, TPU_V3.
	type?: null | string @go(Type,*string)
}

#AcceleratorConfigParameters: {
	// Count of cores of this accelerator.
	// +kubebuilder:validation:Optional
	coreCount?: null | float64 @go(CoreCount,*float64)

	// Type of this accelerator.
	// Possible values are: ACCELERATOR_TYPE_UNSPECIFIED, NVIDIA_TESLA_K80, NVIDIA_TESLA_P100, NVIDIA_TESLA_V100, NVIDIA_TESLA_P4, NVIDIA_TESLA_T4, NVIDIA_TESLA_T4_VWS, NVIDIA_TESLA_P100_VWS, NVIDIA_TESLA_P4_VWS, NVIDIA_TESLA_A100, TPU_V2, TPU_V3.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#InstanceContainerImageInitParameters: {
	// The path to the container image repository.
	// For example: gcr.io/{project_id}/{imageName}
	repository?: null | string @go(Repository,*string)

	// The tag of the container image. If not specified, this defaults to the latest tag.
	tag?: null | string @go(Tag,*string)
}

#InstanceContainerImageObservation: {
	// The path to the container image repository.
	// For example: gcr.io/{project_id}/{imageName}
	repository?: null | string @go(Repository,*string)

	// The tag of the container image. If not specified, this defaults to the latest tag.
	tag?: null | string @go(Tag,*string)
}

#InstanceContainerImageParameters: {
	// The path to the container image repository.
	// For example: gcr.io/{project_id}/{imageName}
	// +kubebuilder:validation:Optional
	repository?: null | string @go(Repository,*string)

	// The tag of the container image. If not specified, this defaults to the latest tag.
	// +kubebuilder:validation:Optional
	tag?: null | string @go(Tag,*string)
}

#InstanceInitParameters: {
	// The hardware accelerator used on this instance. If you use accelerators,
	// make sure that your configuration has enough vCPUs and memory to support the
	// machineType you have selected.
	// Structure is documented below.
	acceleratorConfig?: [...#AcceleratorConfigInitParameters] @go(AcceleratorConfig,[]AcceleratorConfigInitParameters)

	// The size of the boot disk in GB attached to this instance,
	// up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
	// If not specified, this defaults to 100.
	bootDiskSizeGb?: null | float64 @go(BootDiskSizeGb,*float64)

	// Possible disk types for notebook instances.
	// Possible values are: DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME.
	bootDiskType?: null | string @go(BootDiskType,*string)

	// Use a container image to start the notebook instance.
	// Structure is documented below.
	containerImage?: [...#InstanceContainerImageInitParameters] @go(ContainerImage,[]InstanceContainerImageInitParameters)

	// Specify a custom Cloud Storage path where the GPU driver is stored.
	// If not specified, we'll automatically choose from official GPU drivers.
	customGpuDriverPath?: null | string @go(CustomGpuDriverPath,*string)

	// The size of the data disk in GB attached to this instance,
	// up to a maximum of 64000 GB (64 TB).
	// You can choose the size of the data disk based on how big your notebooks and data are.
	// If not specified, this defaults to 100.
	dataDiskSizeGb?: null | float64 @go(DataDiskSizeGb,*float64)

	// Possible disk types for notebook instances.
	// Possible values are: DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME.
	dataDiskType?: null | string @go(DataDiskType,*string)

	// Disk encryption method used on the boot and data disks, defaults to GMEK.
	// Possible values are: DISK_ENCRYPTION_UNSPECIFIED, GMEK, CMEK.
	diskEncryption?: null | string @go(DiskEncryption,*string)

	// Whether the end user authorizes Google Cloud to install GPU driver
	// on this instance. If this field is empty or set to false, the GPU driver
	// won't be installed. Only applicable to instances with GPUs.
	installGpuDriver?: null | bool @go(InstallGpuDriver,*bool)

	// The list of owners of this instance after creation.
	// Format: alias@example.com.
	// Currently supports one owner only.
	// If not specified, all of the service account users of
	// your VM instance's service account can use the instance.
	instanceOwners?: [...null | string] @go(InstanceOwners,[]*string)

	// The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
	// Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}
	kmsKey?: null | string @go(KMSKey,*string)

	// Labels to apply to this instance. These can be later modified by the setLabels method.
	// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// A reference to a machine type which defines VM kind.
	machineType?: null | string @go(MachineType,*string)

	// Custom metadata to apply to this instance.
	// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The name of the VPC that this instance is in.
	// Format: projects/{project_id}/global/networks/{network_id}
	network?: null | string @go(Network,*string)

	// The type of vNIC driver.
	// Possible values are: UNSPECIFIED_NIC_TYPE, VIRTIO_NET, GVNIC.
	nicType?: null | string @go(NicType,*string)

	// The notebook instance will not register with the proxy..
	noProxyAccess?: null | bool @go(NoProxyAccess,*bool)

	// No public IP will be assigned to this instance.
	noPublicIp?: null | bool @go(NoPublicIP,*bool)

	// If true, the data disk will not be auto deleted when deleting the instance.
	noRemoveDataDisk?: null | bool @go(NoRemoveDataDisk,*bool)

	// Path to a Bash script that automatically runs after a
	// notebook instance fully boots up. The path must be a URL
	// or Cloud Storage path (gs://path-to-file/file-name).
	postStartupScript?: null | string @go(PostStartupScript,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Reservation Affinity for consuming Zonal reservation.
	// Structure is documented below.
	reservationAffinity?: [...#ReservationAffinityInitParameters] @go(ReservationAffinity,[]ReservationAffinityInitParameters)

	// The service account on this instance, giving access to other
	// Google Cloud services. You can use any service account within
	// the same project, but you must have the service account user
	// permission to use the instance. If not specified,
	// the Compute Engine default service account is used.
	serviceAccount?: null | string @go(ServiceAccount,*string)

	// Optional. The URIs of service account scopes to be included in Compute Engine instances.
	// If not specified, the following scopes are defined:
	serviceAccountScopes?: [...null | string] @go(ServiceAccountScopes,[]*string)

	// A set of Shielded Instance options. Check [Images using supported Shielded VM features]
	// Not all combinations are valid
	// Structure is documented below.
	shieldedInstanceConfig?: [...#ShieldedInstanceConfigInitParameters] @go(ShieldedInstanceConfig,[]ShieldedInstanceConfigInitParameters)

	// The name of the subnet that this instance is in.
	// Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}
	subnet?: null | string @go(Subnet,*string)

	// The Compute Engine tags to add to instance.
	tags?: [...null | string] @go(Tags,[]*string)

	// Use a Compute Engine VM image to start the notebook instance.
	// Structure is documented below.
	vmImage?: [...#InstanceVMImageInitParameters] @go(VMImage,[]InstanceVMImageInitParameters)
}

#InstanceObservation: {
	// The hardware accelerator used on this instance. If you use accelerators,
	// make sure that your configuration has enough vCPUs and memory to support the
	// machineType you have selected.
	// Structure is documented below.
	acceleratorConfig?: [...#AcceleratorConfigObservation] @go(AcceleratorConfig,[]AcceleratorConfigObservation)

	// The size of the boot disk in GB attached to this instance,
	// up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
	// If not specified, this defaults to 100.
	bootDiskSizeGb?: null | float64 @go(BootDiskSizeGb,*float64)

	// Possible disk types for notebook instances.
	// Possible values are: DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME.
	bootDiskType?: null | string @go(BootDiskType,*string)

	// Use a container image to start the notebook instance.
	// Structure is documented below.
	containerImage?: [...#InstanceContainerImageObservation] @go(ContainerImage,[]InstanceContainerImageObservation)

	// Instance creation time
	createTime?: null | string @go(CreateTime,*string)

	// Specify a custom Cloud Storage path where the GPU driver is stored.
	// If not specified, we'll automatically choose from official GPU drivers.
	customGpuDriverPath?: null | string @go(CustomGpuDriverPath,*string)

	// The size of the data disk in GB attached to this instance,
	// up to a maximum of 64000 GB (64 TB).
	// You can choose the size of the data disk based on how big your notebooks and data are.
	// If not specified, this defaults to 100.
	dataDiskSizeGb?: null | float64 @go(DataDiskSizeGb,*float64)

	// Possible disk types for notebook instances.
	// Possible values are: DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME.
	dataDiskType?: null | string @go(DataDiskType,*string)

	// Disk encryption method used on the boot and data disks, defaults to GMEK.
	// Possible values are: DISK_ENCRYPTION_UNSPECIFIED, GMEK, CMEK.
	diskEncryption?: null | string @go(DiskEncryption,*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{location}}/instances/{{name}}
	id?: null | string @go(ID,*string)

	// Whether the end user authorizes Google Cloud to install GPU driver
	// on this instance. If this field is empty or set to false, the GPU driver
	// won't be installed. Only applicable to instances with GPUs.
	installGpuDriver?: null | bool @go(InstallGpuDriver,*bool)

	// The list of owners of this instance after creation.
	// Format: alias@example.com.
	// Currently supports one owner only.
	// If not specified, all of the service account users of
	// your VM instance's service account can use the instance.
	instanceOwners?: [...null | string] @go(InstanceOwners,[]*string)

	// The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
	// Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}
	kmsKey?: null | string @go(KMSKey,*string)

	// Labels to apply to this instance. These can be later modified by the setLabels method.
	// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// A reference to the zone where the machine resides.
	location?: null | string @go(Location,*string)

	// A reference to a machine type which defines VM kind.
	machineType?: null | string @go(MachineType,*string)

	// Custom metadata to apply to this instance.
	// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The name of the VPC that this instance is in.
	// Format: projects/{project_id}/global/networks/{network_id}
	network?: null | string @go(Network,*string)

	// The type of vNIC driver.
	// Possible values are: UNSPECIFIED_NIC_TYPE, VIRTIO_NET, GVNIC.
	nicType?: null | string @go(NicType,*string)

	// The notebook instance will not register with the proxy..
	noProxyAccess?: null | bool @go(NoProxyAccess,*bool)

	// No public IP will be assigned to this instance.
	noPublicIp?: null | bool @go(NoPublicIP,*bool)

	// If true, the data disk will not be auto deleted when deleting the instance.
	noRemoveDataDisk?: null | bool @go(NoRemoveDataDisk,*bool)

	// Path to a Bash script that automatically runs after a
	// notebook instance fully boots up. The path must be a URL
	// or Cloud Storage path (gs://path-to-file/file-name).
	postStartupScript?: null | string @go(PostStartupScript,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The proxy endpoint that is used to access the Jupyter notebook.
	// Only returned when the resource is in a PROVISIONED state.
	proxyUri?: null | string @go(ProxyURI,*string)

	// Reservation Affinity for consuming Zonal reservation.
	// Structure is documented below.
	reservationAffinity?: [...#ReservationAffinityObservation] @go(ReservationAffinity,[]ReservationAffinityObservation)

	// The service account on this instance, giving access to other
	// Google Cloud services. You can use any service account within
	// the same project, but you must have the service account user
	// permission to use the instance. If not specified,
	// the Compute Engine default service account is used.
	serviceAccount?: null | string @go(ServiceAccount,*string)

	// Optional. The URIs of service account scopes to be included in Compute Engine instances.
	// If not specified, the following scopes are defined:
	serviceAccountScopes?: [...null | string] @go(ServiceAccountScopes,[]*string)

	// A set of Shielded Instance options. Check [Images using supported Shielded VM features]
	// Not all combinations are valid
	// Structure is documented below.
	shieldedInstanceConfig?: [...#ShieldedInstanceConfigObservation] @go(ShieldedInstanceConfig,[]ShieldedInstanceConfigObservation)

	// The state of this instance.
	state?: null | string @go(State,*string)

	// The name of the subnet that this instance is in.
	// Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}
	subnet?: null | string @go(Subnet,*string)

	// The Compute Engine tags to add to instance.
	tags?: [...null | string] @go(Tags,[]*string)

	// Instance update time.
	updateTime?: null | string @go(UpdateTime,*string)

	// Use a Compute Engine VM image to start the notebook instance.
	// Structure is documented below.
	vmImage?: [...#InstanceVMImageObservation] @go(VMImage,[]InstanceVMImageObservation)
}

#InstanceParameters: {
	// The hardware accelerator used on this instance. If you use accelerators,
	// make sure that your configuration has enough vCPUs and memory to support the
	// machineType you have selected.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	acceleratorConfig?: [...#AcceleratorConfigParameters] @go(AcceleratorConfig,[]AcceleratorConfigParameters)

	// The size of the boot disk in GB attached to this instance,
	// up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
	// If not specified, this defaults to 100.
	// +kubebuilder:validation:Optional
	bootDiskSizeGb?: null | float64 @go(BootDiskSizeGb,*float64)

	// Possible disk types for notebook instances.
	// Possible values are: DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME.
	// +kubebuilder:validation:Optional
	bootDiskType?: null | string @go(BootDiskType,*string)

	// Use a container image to start the notebook instance.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	containerImage?: [...#InstanceContainerImageParameters] @go(ContainerImage,[]InstanceContainerImageParameters)

	// Specify a custom Cloud Storage path where the GPU driver is stored.
	// If not specified, we'll automatically choose from official GPU drivers.
	// +kubebuilder:validation:Optional
	customGpuDriverPath?: null | string @go(CustomGpuDriverPath,*string)

	// The size of the data disk in GB attached to this instance,
	// up to a maximum of 64000 GB (64 TB).
	// You can choose the size of the data disk based on how big your notebooks and data are.
	// If not specified, this defaults to 100.
	// +kubebuilder:validation:Optional
	dataDiskSizeGb?: null | float64 @go(DataDiskSizeGb,*float64)

	// Possible disk types for notebook instances.
	// Possible values are: DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, PD_EXTREME.
	// +kubebuilder:validation:Optional
	dataDiskType?: null | string @go(DataDiskType,*string)

	// Disk encryption method used on the boot and data disks, defaults to GMEK.
	// Possible values are: DISK_ENCRYPTION_UNSPECIFIED, GMEK, CMEK.
	// +kubebuilder:validation:Optional
	diskEncryption?: null | string @go(DiskEncryption,*string)

	// Whether the end user authorizes Google Cloud to install GPU driver
	// on this instance. If this field is empty or set to false, the GPU driver
	// won't be installed. Only applicable to instances with GPUs.
	// +kubebuilder:validation:Optional
	installGpuDriver?: null | bool @go(InstallGpuDriver,*bool)

	// The list of owners of this instance after creation.
	// Format: alias@example.com.
	// Currently supports one owner only.
	// If not specified, all of the service account users of
	// your VM instance's service account can use the instance.
	// +kubebuilder:validation:Optional
	instanceOwners?: [...null | string] @go(InstanceOwners,[]*string)

	// The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
	// Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}
	// +kubebuilder:validation:Optional
	kmsKey?: null | string @go(KMSKey,*string)

	// Labels to apply to this instance. These can be later modified by the setLabels method.
	// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// A reference to the zone where the machine resides.
	// +kubebuilder:validation:Required
	location?: null | string @go(Location,*string)

	// A reference to a machine type which defines VM kind.
	// +kubebuilder:validation:Optional
	machineType?: null | string @go(MachineType,*string)

	// Custom metadata to apply to this instance.
	// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	// +kubebuilder:validation:Optional
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)

	// The name of the VPC that this instance is in.
	// Format: projects/{project_id}/global/networks/{network_id}
	// +kubebuilder:validation:Optional
	network?: null | string @go(Network,*string)

	// The type of vNIC driver.
	// Possible values are: UNSPECIFIED_NIC_TYPE, VIRTIO_NET, GVNIC.
	// +kubebuilder:validation:Optional
	nicType?: null | string @go(NicType,*string)

	// The notebook instance will not register with the proxy..
	// +kubebuilder:validation:Optional
	noProxyAccess?: null | bool @go(NoProxyAccess,*bool)

	// No public IP will be assigned to this instance.
	// +kubebuilder:validation:Optional
	noPublicIp?: null | bool @go(NoPublicIP,*bool)

	// If true, the data disk will not be auto deleted when deleting the instance.
	// +kubebuilder:validation:Optional
	noRemoveDataDisk?: null | bool @go(NoRemoveDataDisk,*bool)

	// Path to a Bash script that automatically runs after a
	// notebook instance fully boots up. The path must be a URL
	// or Cloud Storage path (gs://path-to-file/file-name).
	// +kubebuilder:validation:Optional
	postStartupScript?: null | string @go(PostStartupScript,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Reservation Affinity for consuming Zonal reservation.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	reservationAffinity?: [...#ReservationAffinityParameters] @go(ReservationAffinity,[]ReservationAffinityParameters)

	// The service account on this instance, giving access to other
	// Google Cloud services. You can use any service account within
	// the same project, but you must have the service account user
	// permission to use the instance. If not specified,
	// the Compute Engine default service account is used.
	// +kubebuilder:validation:Optional
	serviceAccount?: null | string @go(ServiceAccount,*string)

	// Optional. The URIs of service account scopes to be included in Compute Engine instances.
	// If not specified, the following scopes are defined:
	// +kubebuilder:validation:Optional
	serviceAccountScopes?: [...null | string] @go(ServiceAccountScopes,[]*string)

	// A set of Shielded Instance options. Check [Images using supported Shielded VM features]
	// Not all combinations are valid
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	shieldedInstanceConfig?: [...#ShieldedInstanceConfigParameters] @go(ShieldedInstanceConfig,[]ShieldedInstanceConfigParameters)

	// The name of the subnet that this instance is in.
	// Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}
	// +kubebuilder:validation:Optional
	subnet?: null | string @go(Subnet,*string)

	// The Compute Engine tags to add to instance.
	// +kubebuilder:validation:Optional
	tags?: [...null | string] @go(Tags,[]*string)

	// Use a Compute Engine VM image to start the notebook instance.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	vmImage?: [...#InstanceVMImageParameters] @go(VMImage,[]InstanceVMImageParameters)
}

#InstanceVMImageInitParameters: {
	// Use this VM image family to find the image; the newest image in this family will be used.
	imageFamily?: null | string @go(ImageFamily,*string)

	// Use VM image name to find the image.
	imageName?: null | string @go(ImageName,*string)

	// The name of the Google Cloud project that this VM image belongs to.
	// Format: projects/{project_id}
	project?: null | string @go(Project,*string)
}

#InstanceVMImageObservation: {
	// Use this VM image family to find the image; the newest image in this family will be used.
	imageFamily?: null | string @go(ImageFamily,*string)

	// Use VM image name to find the image.
	imageName?: null | string @go(ImageName,*string)

	// The name of the Google Cloud project that this VM image belongs to.
	// Format: projects/{project_id}
	project?: null | string @go(Project,*string)
}

#InstanceVMImageParameters: {
	// Use this VM image family to find the image; the newest image in this family will be used.
	// +kubebuilder:validation:Optional
	imageFamily?: null | string @go(ImageFamily,*string)

	// Use VM image name to find the image.
	// +kubebuilder:validation:Optional
	imageName?: null | string @go(ImageName,*string)

	// The name of the Google Cloud project that this VM image belongs to.
	// Format: projects/{project_id}
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

#ReservationAffinityInitParameters: {
	// The type of Compute Reservation.
	// Possible values are: NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION.
	consumeReservationType?: null | string @go(ConsumeReservationType,*string)

	// Corresponds to the label key of reservation resource.
	key?: null | string @go(Key,*string)

	// Corresponds to the label values of reservation resource.
	values?: [...null | string] @go(Values,[]*string)
}

#ReservationAffinityObservation: {
	// The type of Compute Reservation.
	// Possible values are: NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION.
	consumeReservationType?: null | string @go(ConsumeReservationType,*string)

	// Corresponds to the label key of reservation resource.
	key?: null | string @go(Key,*string)

	// Corresponds to the label values of reservation resource.
	values?: [...null | string] @go(Values,[]*string)
}

#ReservationAffinityParameters: {
	// The type of Compute Reservation.
	// Possible values are: NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION.
	// +kubebuilder:validation:Optional
	consumeReservationType?: null | string @go(ConsumeReservationType,*string)

	// Corresponds to the label key of reservation resource.
	// +kubebuilder:validation:Optional
	key?: null | string @go(Key,*string)

	// Corresponds to the label values of reservation resource.
	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#ShieldedInstanceConfigInitParameters: {
	// Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the
	// boot integrity of the instance. The attestation is performed against the integrity policy baseline.
	// This baseline is initially derived from the implicitly trusted boot image when the instance is created.
	// Enabled by default.
	enableIntegrityMonitoring?: null | bool @go(EnableIntegrityMonitoring,*bool)

	// Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs
	// authentic software by verifying the digital signature of all boot components, and halting the boot process
	// if signature verification fails.
	// Disabled by default.
	enableSecureBoot?: null | bool @go(EnableSecureBoot,*bool)

	// Defines whether the instance has the vTPM enabled.
	// Enabled by default.
	enableVtpm?: null | bool @go(EnableVtpm,*bool)
}

#ShieldedInstanceConfigObservation: {
	// Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the
	// boot integrity of the instance. The attestation is performed against the integrity policy baseline.
	// This baseline is initially derived from the implicitly trusted boot image when the instance is created.
	// Enabled by default.
	enableIntegrityMonitoring?: null | bool @go(EnableIntegrityMonitoring,*bool)

	// Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs
	// authentic software by verifying the digital signature of all boot components, and halting the boot process
	// if signature verification fails.
	// Disabled by default.
	enableSecureBoot?: null | bool @go(EnableSecureBoot,*bool)

	// Defines whether the instance has the vTPM enabled.
	// Enabled by default.
	enableVtpm?: null | bool @go(EnableVtpm,*bool)
}

#ShieldedInstanceConfigParameters: {
	// Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the
	// boot integrity of the instance. The attestation is performed against the integrity policy baseline.
	// This baseline is initially derived from the implicitly trusted boot image when the instance is created.
	// Enabled by default.
	// +kubebuilder:validation:Optional
	enableIntegrityMonitoring?: null | bool @go(EnableIntegrityMonitoring,*bool)

	// Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs
	// authentic software by verifying the digital signature of all boot components, and halting the boot process
	// if signature verification fails.
	// Disabled by default.
	// +kubebuilder:validation:Optional
	enableSecureBoot?: null | bool @go(EnableSecureBoot,*bool)

	// Defines whether the instance has the vTPM enabled.
	// Enabled by default.
	// +kubebuilder:validation:Optional
	enableVtpm?: null | bool @go(EnableVtpm,*bool)
}

// InstanceSpec defines the desired state of Instance
#InstanceSpec: {
	forProvider: #InstanceParameters @go(ForProvider)

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
	initProvider?: #InstanceInitParameters @go(InitProvider)
}

// InstanceStatus defines the observed state of Instance.
#InstanceStatus: {
	atProvider?: #InstanceObservation @go(AtProvider)
}

// Instance is the Schema for the Instances API. A Cloud AI Platform Notebook instance.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Instance: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.machineType) || (has(self.initProvider) && has(self.initProvider.machineType))",message="spec.forProvider.machineType is a required parameter"
	spec:    #InstanceSpec   @go(Spec)
	status?: #InstanceStatus @go(Status)
}

// InstanceList contains a list of Instances
#InstanceList: {
	items: [...#Instance] @go(Items,[]Instance)
}
