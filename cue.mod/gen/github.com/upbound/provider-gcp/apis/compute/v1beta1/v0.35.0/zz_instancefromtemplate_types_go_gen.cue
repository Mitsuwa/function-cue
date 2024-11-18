// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#BootDiskInitializeParamsInitParameters: {
	image?: null | string @go(Image,*string)
	labels?: {[string]: string} @go(Labels,map[string]string)
	size?: null | float64 @go(Size,*float64)
	type?: null | string  @go(Type,*string)
}

#BootDiskInitializeParamsObservation: {
	image?: null | string @go(Image,*string)
	labels?: {[string]: string} @go(Labels,map[string]string)
	size?: null | float64 @go(Size,*float64)
	type?: null | string  @go(Type,*string)
}

#BootDiskInitializeParamsParameters: {
	// +kubebuilder:validation:Optional
	image?: null | string @go(Image,*string)

	// +kubebuilder:validation:Optional
	labels?: {[string]: string} @go(Labels,map[string]string)

	// +kubebuilder:validation:Optional
	size?: null | float64 @go(Size,*float64)

	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#InstanceFromTemplateAdvancedMachineFeaturesInitParameters: {
	enableNestedVirtualization?: null | bool    @go(EnableNestedVirtualization,*bool)
	threadsPerCore?:             null | float64 @go(ThreadsPerCore,*float64)
	visibleCoreCount?:           null | float64 @go(VisibleCoreCount,*float64)
}

#InstanceFromTemplateAdvancedMachineFeaturesObservation: {
	enableNestedVirtualization?: null | bool    @go(EnableNestedVirtualization,*bool)
	threadsPerCore?:             null | float64 @go(ThreadsPerCore,*float64)
	visibleCoreCount?:           null | float64 @go(VisibleCoreCount,*float64)
}

#InstanceFromTemplateAdvancedMachineFeaturesParameters: {
	// +kubebuilder:validation:Optional
	enableNestedVirtualization?: null | bool @go(EnableNestedVirtualization,*bool)

	// +kubebuilder:validation:Optional
	threadsPerCore?: null | float64 @go(ThreadsPerCore,*float64)

	// +kubebuilder:validation:Optional
	visibleCoreCount?: null | float64 @go(VisibleCoreCount,*float64)
}

#InstanceFromTemplateAttachedDiskInitParameters: {
	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	deviceName?:              null | string @go(DeviceName,*string)
	diskEncryptionKeyRaw?:    null | string @go(DiskEncryptionKeyRaw,*string)
	diskEncryptionKeySha256?: null | string @go(DiskEncryptionKeySha256,*string)
	kmsKeySelfLink?:          null | string @go(KMSKeySelfLink,*string)
	mode?:                    null | string @go(Mode,*string)
	source?:                  null | string @go(Source,*string)
}

#InstanceFromTemplateAttachedDiskObservation: {
	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	deviceName?:              null | string @go(DeviceName,*string)
	diskEncryptionKeyRaw?:    null | string @go(DiskEncryptionKeyRaw,*string)
	diskEncryptionKeySha256?: null | string @go(DiskEncryptionKeySha256,*string)
	kmsKeySelfLink?:          null | string @go(KMSKeySelfLink,*string)
	mode?:                    null | string @go(Mode,*string)
	source?:                  null | string @go(Source,*string)
}

#InstanceFromTemplateAttachedDiskParameters: {
	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	deviceName?: null | string @go(DeviceName,*string)

	// +kubebuilder:validation:Optional
	diskEncryptionKeyRaw?: null | string @go(DiskEncryptionKeyRaw,*string)

	// +kubebuilder:validation:Optional
	diskEncryptionKeySha256?: null | string @go(DiskEncryptionKeySha256,*string)

	// +kubebuilder:validation:Optional
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// +kubebuilder:validation:Optional
	mode?: null | string @go(Mode,*string)

	// +kubebuilder:validation:Optional
	source?: null | string @go(Source,*string)
}

#InstanceFromTemplateBootDiskInitParameters: {
	// Default is 6 minutes.
	autoDelete?: null | bool @go(AutoDelete,*bool)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	deviceName?: null | string @go(DeviceName,*string)
	initializeParams?: [...#BootDiskInitializeParamsInitParameters] @go(InitializeParams,[]BootDiskInitializeParamsInitParameters)
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)
	mode?:           null | string @go(Mode,*string)
	source?:         null | string @go(Source,*string)
}

#InstanceFromTemplateBootDiskObservation: {
	// Default is 6 minutes.
	autoDelete?: null | bool @go(AutoDelete,*bool)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	deviceName?:              null | string @go(DeviceName,*string)
	diskEncryptionKeySha256?: null | string @go(DiskEncryptionKeySha256,*string)
	initializeParams?: [...#BootDiskInitializeParamsObservation] @go(InitializeParams,[]BootDiskInitializeParamsObservation)
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)
	mode?:           null | string @go(Mode,*string)
	source?:         null | string @go(Source,*string)
}

#InstanceFromTemplateBootDiskParameters: {
	// Default is 6 minutes.
	// +kubebuilder:validation:Optional
	autoDelete?: null | bool @go(AutoDelete,*bool)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	deviceName?: null | string @go(DeviceName,*string)

	// +kubebuilder:validation:Optional
	initializeParams?: [...#BootDiskInitializeParamsParameters] @go(InitializeParams,[]BootDiskInitializeParamsParameters)

	// +kubebuilder:validation:Optional
	kmsKeySelfLink?: null | string @go(KMSKeySelfLink,*string)

	// +kubebuilder:validation:Optional
	mode?: null | string @go(Mode,*string)

	// +kubebuilder:validation:Optional
	source?: null | string @go(Source,*string)
}

#InstanceFromTemplateConfidentialInstanceConfigInitParameters: {
	enableConfidentialCompute?: null | bool @go(EnableConfidentialCompute,*bool)
}

#InstanceFromTemplateConfidentialInstanceConfigObservation: {
	enableConfidentialCompute?: null | bool @go(EnableConfidentialCompute,*bool)
}

#InstanceFromTemplateConfidentialInstanceConfigParameters: {
	// +kubebuilder:validation:Optional
	enableConfidentialCompute?: null | bool @go(EnableConfidentialCompute,*bool)
}

#InstanceFromTemplateGuestAcceleratorInitParameters: {
	count?: null | float64 @go(Count,*float64)
	type?:  null | string  @go(Type,*string)
}

#InstanceFromTemplateGuestAcceleratorObservation: {
	count?: null | float64 @go(Count,*float64)
	type?:  null | string  @go(Type,*string)
}

#InstanceFromTemplateGuestAcceleratorParameters: {
	// +kubebuilder:validation:Optional
	count?: null | float64 @go(Count,*float64)

	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#InstanceFromTemplateInitParameters: {
	advancedMachineFeatures?: [...#InstanceFromTemplateAdvancedMachineFeaturesInitParameters] @go(AdvancedMachineFeatures,[]InstanceFromTemplateAdvancedMachineFeaturesInitParameters)

	// Default is 6 minutes.
	allowStoppingForUpdate?: null | bool @go(AllowStoppingForUpdate,*bool)
	attachedDisk?: [...#InstanceFromTemplateAttachedDiskInitParameters] @go(AttachedDisk,[]InstanceFromTemplateAttachedDiskInitParameters)
	bootDisk?: [...#InstanceFromTemplateBootDiskInitParameters] @go(BootDisk,[]InstanceFromTemplateBootDiskInitParameters)
	canIpForward?: null | bool @go(CanIPForward,*bool)
	confidentialInstanceConfig?: [...#InstanceFromTemplateConfidentialInstanceConfigInitParameters] @go(ConfidentialInstanceConfig,[]InstanceFromTemplateConfidentialInstanceConfigInitParameters)
	deletionProtection?: null | bool   @go(DeletionProtection,*bool)
	description?:        null | string @go(Description,*string)
	desiredStatus?:      null | string @go(DesiredStatus,*string)
	enableDisplay?:      null | bool   @go(EnableDisplay,*bool)
	guestAccelerator?: [...#InstanceFromTemplateGuestAcceleratorInitParameters] @go(GuestAccelerator,[]InstanceFromTemplateGuestAcceleratorInitParameters)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	hostname?: null | string @go(Hostname,*string)
	labels?: {[string]: null | string} @go(Labels,map[string]*string)
	machineType?: null | string @go(MachineType,*string)
	metadata?: {[string]: string} @go(Metadata,map[string]string)
	metadataStartupScript?: null | string @go(MetadataStartupScript,*string)
	minCpuPlatform?:        null | string @go(MinCPUPlatform,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)
	networkInterface?: [...#InstanceFromTemplateNetworkInterfaceInitParameters] @go(NetworkInterface,[]InstanceFromTemplateNetworkInterfaceInitParameters)
	project?: null | string @go(Project,*string)
	reservationAffinity?: [...#InstanceFromTemplateReservationAffinityInitParameters] @go(ReservationAffinity,[]InstanceFromTemplateReservationAffinityInitParameters)
	resourcePolicies?: [...null | string] @go(ResourcePolicies,[]*string)
	scheduling?: [...#InstanceFromTemplateSchedulingInitParameters] @go(Scheduling,[]InstanceFromTemplateSchedulingInitParameters)
	scratchDisk?: [...#InstanceFromTemplateScratchDiskInitParameters] @go(ScratchDisk,[]InstanceFromTemplateScratchDiskInitParameters)
	serviceAccount?: [...#InstanceFromTemplateServiceAccountInitParameters] @go(ServiceAccount,[]InstanceFromTemplateServiceAccountInitParameters)
	shieldedInstanceConfig?: [...#InstanceFromTemplateShieldedInstanceConfigInitParameters] @go(ShieldedInstanceConfig,[]InstanceFromTemplateShieldedInstanceConfigInitParameters)
	tags?: [...null | string] @go(Tags,[]*string)

	// The zone that the machine should be created in. If not
	// set, the provider zone is used.
	zone?: null | string @go(Zone,*string)
}

#InstanceFromTemplateNetworkInterfaceInitParameters: {
	accessConfig?: [...#NetworkInterfaceAccessConfigInitParameters] @go(AccessConfig,[]NetworkInterfaceAccessConfigInitParameters)
	aliasIpRange?: [...#NetworkInterfaceAliasIPRangeInitParameters] @go(AliasIPRange,[]NetworkInterfaceAliasIPRangeInitParameters)
	ipv6AccessConfig?: [...#NetworkInterfaceIPv6AccessConfigInitParameters] @go(IPv6AccessConfig,[]NetworkInterfaceIPv6AccessConfigInitParameters)
	networkIp?:         null | string  @go(NetworkIP,*string)
	nicType?:           null | string  @go(NicType,*string)
	queueCount?:        null | float64 @go(QueueCount,*float64)
	stackType?:         null | string  @go(StackType,*string)
	subnetworkProject?: null | string  @go(SubnetworkProject,*string)
}

#InstanceFromTemplateNetworkInterfaceObservation: {
	accessConfig?: [...#NetworkInterfaceAccessConfigObservation] @go(AccessConfig,[]NetworkInterfaceAccessConfigObservation)
	aliasIpRange?: [...#NetworkInterfaceAliasIPRangeObservation] @go(AliasIPRange,[]NetworkInterfaceAliasIPRangeObservation)
	ipv6AccessConfig?: [...#NetworkInterfaceIPv6AccessConfigObservation] @go(IPv6AccessConfig,[]NetworkInterfaceIPv6AccessConfigObservation)
	ipv6AccessType?: null | string @go(IPv6AccessType,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	name?:              null | string  @go(Name,*string)
	network?:           null | string  @go(Network,*string)
	networkIp?:         null | string  @go(NetworkIP,*string)
	nicType?:           null | string  @go(NicType,*string)
	queueCount?:        null | float64 @go(QueueCount,*float64)
	stackType?:         null | string  @go(StackType,*string)
	subnetwork?:        null | string  @go(Subnetwork,*string)
	subnetworkProject?: null | string  @go(SubnetworkProject,*string)
}

#InstanceFromTemplateNetworkInterfaceParameters: {
	// +kubebuilder:validation:Optional
	accessConfig?: [...#NetworkInterfaceAccessConfigParameters] @go(AccessConfig,[]NetworkInterfaceAccessConfigParameters)

	// +kubebuilder:validation:Optional
	aliasIpRange?: [...#NetworkInterfaceAliasIPRangeParameters] @go(AliasIPRange,[]NetworkInterfaceAliasIPRangeParameters)

	// +kubebuilder:validation:Optional
	ipv6AccessConfig?: [...#NetworkInterfaceIPv6AccessConfigParameters] @go(IPv6AccessConfig,[]NetworkInterfaceIPv6AccessConfigParameters)

	// +crossplane:generate:reference:type=Network
	// +kubebuilder:validation:Optional
	network?: null | string @go(Network,*string)

	// +kubebuilder:validation:Optional
	networkIp?: null | string @go(NetworkIP,*string)

	// +kubebuilder:validation:Optional
	nicType?: null | string @go(NicType,*string)

	// +kubebuilder:validation:Optional
	queueCount?: null | float64 @go(QueueCount,*float64)

	// +kubebuilder:validation:Optional
	stackType?: null | string @go(StackType,*string)

	// +crossplane:generate:reference:type=Subnetwork
	// +kubebuilder:validation:Optional
	subnetwork?: null | string @go(Subnetwork,*string)

	// +kubebuilder:validation:Optional
	subnetworkProject?: null | string @go(SubnetworkProject,*string)
}

#InstanceFromTemplateObservation: {
	advancedMachineFeatures?: [...#InstanceFromTemplateAdvancedMachineFeaturesObservation] @go(AdvancedMachineFeatures,[]InstanceFromTemplateAdvancedMachineFeaturesObservation)

	// Default is 6 minutes.
	allowStoppingForUpdate?: null | bool @go(AllowStoppingForUpdate,*bool)
	attachedDisk?: [...#InstanceFromTemplateAttachedDiskObservation] @go(AttachedDisk,[]InstanceFromTemplateAttachedDiskObservation)
	bootDisk?: [...#InstanceFromTemplateBootDiskObservation] @go(BootDisk,[]InstanceFromTemplateBootDiskObservation)
	cpuPlatform?:  null | string @go(CPUPlatform,*string)
	canIpForward?: null | bool   @go(CanIPForward,*bool)
	confidentialInstanceConfig?: [...#InstanceFromTemplateConfidentialInstanceConfigObservation] @go(ConfidentialInstanceConfig,[]InstanceFromTemplateConfidentialInstanceConfigObservation)
	currentStatus?:      null | string @go(CurrentStatus,*string)
	deletionProtection?: null | bool   @go(DeletionProtection,*bool)
	description?:        null | string @go(Description,*string)
	desiredStatus?:      null | string @go(DesiredStatus,*string)
	enableDisplay?:      null | bool   @go(EnableDisplay,*bool)
	guestAccelerator?: [...#InstanceFromTemplateGuestAcceleratorObservation] @go(GuestAccelerator,[]InstanceFromTemplateGuestAcceleratorObservation)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	hostname?:         null | string @go(Hostname,*string)
	id?:               null | string @go(ID,*string)
	instanceId?:       null | string @go(InstanceID,*string)
	labelFingerprint?: null | string @go(LabelFingerprint,*string)
	labels?: {[string]: null | string} @go(Labels,map[string]*string)
	machineType?: null | string @go(MachineType,*string)
	metadata?: {[string]: string} @go(Metadata,map[string]string)
	metadataFingerprint?:   null | string @go(MetadataFingerprint,*string)
	metadataStartupScript?: null | string @go(MetadataStartupScript,*string)
	minCpuPlatform?:        null | string @go(MinCPUPlatform,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)
	networkInterface?: [...#InstanceFromTemplateNetworkInterfaceObservation] @go(NetworkInterface,[]InstanceFromTemplateNetworkInterfaceObservation)
	project?: null | string @go(Project,*string)
	reservationAffinity?: [...#InstanceFromTemplateReservationAffinityObservation] @go(ReservationAffinity,[]InstanceFromTemplateReservationAffinityObservation)
	resourcePolicies?: [...null | string] @go(ResourcePolicies,[]*string)
	scheduling?: [...#InstanceFromTemplateSchedulingObservation] @go(Scheduling,[]InstanceFromTemplateSchedulingObservation)
	scratchDisk?: [...#InstanceFromTemplateScratchDiskObservation] @go(ScratchDisk,[]InstanceFromTemplateScratchDiskObservation)
	selfLink?: null | string @go(SelfLink,*string)
	serviceAccount?: [...#InstanceFromTemplateServiceAccountObservation] @go(ServiceAccount,[]InstanceFromTemplateServiceAccountObservation)
	shieldedInstanceConfig?: [...#InstanceFromTemplateShieldedInstanceConfigObservation] @go(ShieldedInstanceConfig,[]InstanceFromTemplateShieldedInstanceConfigObservation)

	// Name or self link of an instance
	// template to create the instance based on. It is recommended to reference
	// instance templates through their unique id (self_link_unique attribute).
	sourceInstanceTemplate?: null | string @go(SourceInstanceTemplate,*string)
	tags?: [...null | string] @go(Tags,[]*string)
	tagsFingerprint?: null | string @go(TagsFingerprint,*string)

	// The zone that the machine should be created in. If not
	// set, the provider zone is used.
	zone?: null | string @go(Zone,*string)
}

#InstanceFromTemplateParameters: {
	// +kubebuilder:validation:Optional
	advancedMachineFeatures?: [...#InstanceFromTemplateAdvancedMachineFeaturesParameters] @go(AdvancedMachineFeatures,[]InstanceFromTemplateAdvancedMachineFeaturesParameters)

	// Default is 6 minutes.
	// +kubebuilder:validation:Optional
	allowStoppingForUpdate?: null | bool @go(AllowStoppingForUpdate,*bool)

	// +kubebuilder:validation:Optional
	attachedDisk?: [...#InstanceFromTemplateAttachedDiskParameters] @go(AttachedDisk,[]InstanceFromTemplateAttachedDiskParameters)

	// +kubebuilder:validation:Optional
	bootDisk?: [...#InstanceFromTemplateBootDiskParameters] @go(BootDisk,[]InstanceFromTemplateBootDiskParameters)

	// +kubebuilder:validation:Optional
	canIpForward?: null | bool @go(CanIPForward,*bool)

	// +kubebuilder:validation:Optional
	confidentialInstanceConfig?: [...#InstanceFromTemplateConfidentialInstanceConfigParameters] @go(ConfidentialInstanceConfig,[]InstanceFromTemplateConfidentialInstanceConfigParameters)

	// +kubebuilder:validation:Optional
	deletionProtection?: null | bool @go(DeletionProtection,*bool)

	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// +kubebuilder:validation:Optional
	desiredStatus?: null | string @go(DesiredStatus,*string)

	// +kubebuilder:validation:Optional
	enableDisplay?: null | bool @go(EnableDisplay,*bool)

	// +kubebuilder:validation:Optional
	guestAccelerator?: [...#InstanceFromTemplateGuestAcceleratorParameters] @go(GuestAccelerator,[]InstanceFromTemplateGuestAcceleratorParameters)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	hostname?: null | string @go(Hostname,*string)

	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// +kubebuilder:validation:Optional
	machineType?: null | string @go(MachineType,*string)

	// +kubebuilder:validation:Optional
	metadata?: {[string]: string} @go(Metadata,map[string]string)

	// +kubebuilder:validation:Optional
	metadataStartupScript?: null | string @go(MetadataStartupScript,*string)

	// +kubebuilder:validation:Optional
	minCpuPlatform?: null | string @go(MinCPUPlatform,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// +kubebuilder:validation:Optional
	networkInterface?: [...#InstanceFromTemplateNetworkInterfaceParameters] @go(NetworkInterface,[]InstanceFromTemplateNetworkInterfaceParameters)

	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// +kubebuilder:validation:Optional
	reservationAffinity?: [...#InstanceFromTemplateReservationAffinityParameters] @go(ReservationAffinity,[]InstanceFromTemplateReservationAffinityParameters)

	// +kubebuilder:validation:Optional
	resourcePolicies?: [...null | string] @go(ResourcePolicies,[]*string)

	// +kubebuilder:validation:Optional
	scheduling?: [...#InstanceFromTemplateSchedulingParameters] @go(Scheduling,[]InstanceFromTemplateSchedulingParameters)

	// +kubebuilder:validation:Optional
	scratchDisk?: [...#InstanceFromTemplateScratchDiskParameters] @go(ScratchDisk,[]InstanceFromTemplateScratchDiskParameters)

	// +kubebuilder:validation:Optional
	serviceAccount?: [...#InstanceFromTemplateServiceAccountParameters] @go(ServiceAccount,[]InstanceFromTemplateServiceAccountParameters)

	// +kubebuilder:validation:Optional
	shieldedInstanceConfig?: [...#InstanceFromTemplateShieldedInstanceConfigParameters] @go(ShieldedInstanceConfig,[]InstanceFromTemplateShieldedInstanceConfigParameters)

	// Name or self link of an instance
	// template to create the instance based on. It is recommended to reference
	// instance templates through their unique id (self_link_unique attribute).
	// +crossplane:generate:reference:type=InstanceTemplate
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-gcp/config/common.ExtractResourceID()
	// +kubebuilder:validation:Optional
	sourceInstanceTemplate?: null | string @go(SourceInstanceTemplate,*string)

	// +kubebuilder:validation:Optional
	tags?: [...null | string] @go(Tags,[]*string)

	// The zone that the machine should be created in. If not
	// set, the provider zone is used.
	// +kubebuilder:validation:Optional
	zone?: null | string @go(Zone,*string)
}

#InstanceFromTemplateReservationAffinityInitParameters: {
	specificReservation?: [...#ReservationAffinitySpecificReservationInitParameters] @go(SpecificReservation,[]ReservationAffinitySpecificReservationInitParameters)
	type?: null | string @go(Type,*string)
}

#InstanceFromTemplateReservationAffinityObservation: {
	specificReservation?: [...#ReservationAffinitySpecificReservationObservation] @go(SpecificReservation,[]ReservationAffinitySpecificReservationObservation)
	type?: null | string @go(Type,*string)
}

#InstanceFromTemplateReservationAffinityParameters: {
	// +kubebuilder:validation:Optional
	specificReservation?: [...#ReservationAffinitySpecificReservationParameters] @go(SpecificReservation,[]ReservationAffinitySpecificReservationParameters)

	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#InstanceFromTemplateSchedulingInitParameters: {
	automaticRestart?:          null | bool    @go(AutomaticRestart,*bool)
	instanceTerminationAction?: null | string  @go(InstanceTerminationAction,*string)
	minNodeCpus?:               null | float64 @go(MinNodeCpus,*float64)
	nodeAffinities?: [...#SchedulingNodeAffinitiesInitParameters] @go(NodeAffinities,[]SchedulingNodeAffinitiesInitParameters)
	onHostMaintenance?: null | string @go(OnHostMaintenance,*string)
	preemptible?:       null | bool   @go(Preemptible,*bool)
	provisioningModel?: null | string @go(ProvisioningModel,*string)
}

#InstanceFromTemplateSchedulingObservation: {
	automaticRestart?:          null | bool    @go(AutomaticRestart,*bool)
	instanceTerminationAction?: null | string  @go(InstanceTerminationAction,*string)
	minNodeCpus?:               null | float64 @go(MinNodeCpus,*float64)
	nodeAffinities?: [...#SchedulingNodeAffinitiesObservation] @go(NodeAffinities,[]SchedulingNodeAffinitiesObservation)
	onHostMaintenance?: null | string @go(OnHostMaintenance,*string)
	preemptible?:       null | bool   @go(Preemptible,*bool)
	provisioningModel?: null | string @go(ProvisioningModel,*string)
}

#InstanceFromTemplateSchedulingParameters: {
	// +kubebuilder:validation:Optional
	automaticRestart?: null | bool @go(AutomaticRestart,*bool)

	// +kubebuilder:validation:Optional
	instanceTerminationAction?: null | string @go(InstanceTerminationAction,*string)

	// +kubebuilder:validation:Optional
	minNodeCpus?: null | float64 @go(MinNodeCpus,*float64)

	// +kubebuilder:validation:Optional
	nodeAffinities?: [...#SchedulingNodeAffinitiesParameters] @go(NodeAffinities,[]SchedulingNodeAffinitiesParameters)

	// +kubebuilder:validation:Optional
	onHostMaintenance?: null | string @go(OnHostMaintenance,*string)

	// +kubebuilder:validation:Optional
	preemptible?: null | bool @go(Preemptible,*bool)

	// +kubebuilder:validation:Optional
	provisioningModel?: null | string @go(ProvisioningModel,*string)
}

#InstanceFromTemplateScratchDiskInitParameters: {
	interface?: null | string  @go(Interface,*string)
	size?:      null | float64 @go(Size,*float64)
}

#InstanceFromTemplateScratchDiskObservation: {
	interface?: null | string  @go(Interface,*string)
	size?:      null | float64 @go(Size,*float64)
}

#InstanceFromTemplateScratchDiskParameters: {
	// +kubebuilder:validation:Optional
	interface?: null | string @go(Interface,*string)

	// +kubebuilder:validation:Optional
	size?: null | float64 @go(Size,*float64)
}

#InstanceFromTemplateServiceAccountInitParameters: {
	email?: null | string @go(Email,*string)
	scopes?: [...null | string] @go(Scopes,[]*string)
}

#InstanceFromTemplateServiceAccountObservation: {
	email?: null | string @go(Email,*string)
	scopes?: [...null | string] @go(Scopes,[]*string)
}

#InstanceFromTemplateServiceAccountParameters: {
	// +kubebuilder:validation:Optional
	email?: null | string @go(Email,*string)

	// +kubebuilder:validation:Optional
	scopes?: [...null | string] @go(Scopes,[]*string)
}

#InstanceFromTemplateShieldedInstanceConfigInitParameters: {
	enableIntegrityMonitoring?: null | bool @go(EnableIntegrityMonitoring,*bool)
	enableSecureBoot?:          null | bool @go(EnableSecureBoot,*bool)
	enableVtpm?:                null | bool @go(EnableVtpm,*bool)
}

#InstanceFromTemplateShieldedInstanceConfigObservation: {
	enableIntegrityMonitoring?: null | bool @go(EnableIntegrityMonitoring,*bool)
	enableSecureBoot?:          null | bool @go(EnableSecureBoot,*bool)
	enableVtpm?:                null | bool @go(EnableVtpm,*bool)
}

#InstanceFromTemplateShieldedInstanceConfigParameters: {
	// +kubebuilder:validation:Optional
	enableIntegrityMonitoring?: null | bool @go(EnableIntegrityMonitoring,*bool)

	// +kubebuilder:validation:Optional
	enableSecureBoot?: null | bool @go(EnableSecureBoot,*bool)

	// +kubebuilder:validation:Optional
	enableVtpm?: null | bool @go(EnableVtpm,*bool)
}

#NetworkInterfaceAccessConfigInitParameters: {
	natIp?:       null | string @go(NATIP,*string)
	networkTier?: null | string @go(NetworkTier,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	publicPtrDomainName?: null | string @go(PublicPtrDomainName,*string)
}

#NetworkInterfaceAccessConfigObservation: {
	natIp?:       null | string @go(NATIP,*string)
	networkTier?: null | string @go(NetworkTier,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	publicPtrDomainName?: null | string @go(PublicPtrDomainName,*string)
}

#NetworkInterfaceAccessConfigParameters: {
	// +kubebuilder:validation:Optional
	natIp?: null | string @go(NATIP,*string)

	// +kubebuilder:validation:Optional
	networkTier?: null | string @go(NetworkTier,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	publicPtrDomainName?: null | string @go(PublicPtrDomainName,*string)
}

#NetworkInterfaceAliasIPRangeInitParameters: {
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	subnetworkRangeName?: null | string @go(SubnetworkRangeName,*string)
}

#NetworkInterfaceAliasIPRangeObservation: {
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	subnetworkRangeName?: null | string @go(SubnetworkRangeName,*string)
}

#NetworkInterfaceAliasIPRangeParameters: {
	// +kubebuilder:validation:Optional
	ipCidrRange?: null | string @go(IPCidrRange,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	subnetworkRangeName?: null | string @go(SubnetworkRangeName,*string)
}

#NetworkInterfaceIPv6AccessConfigInitParameters: {
	networkTier?: null | string @go(NetworkTier,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	publicPtrDomainName?: null | string @go(PublicPtrDomainName,*string)
}

#NetworkInterfaceIPv6AccessConfigObservation: {
	externalIpv6?:             null | string @go(ExternalIPv6,*string)
	externalIpv6PrefixLength?: null | string @go(ExternalIPv6PrefixLength,*string)
	networkTier?:              null | string @go(NetworkTier,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	publicPtrDomainName?: null | string @go(PublicPtrDomainName,*string)
}

#NetworkInterfaceIPv6AccessConfigParameters: {
	// +kubebuilder:validation:Optional
	networkTier?: null | string @go(NetworkTier,*string)

	// A unique name for the resource, required by GCE.
	// Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	publicPtrDomainName?: null | string @go(PublicPtrDomainName,*string)
}

#ReservationAffinitySpecificReservationInitParameters: {
	key?: null | string @go(Key,*string)
	values?: [...null | string] @go(Values,[]*string)
}

#ReservationAffinitySpecificReservationObservation: {
	key?: null | string @go(Key,*string)
	values?: [...null | string] @go(Values,[]*string)
}

#ReservationAffinitySpecificReservationParameters: {
	// +kubebuilder:validation:Optional
	key?: null | string @go(Key,*string)

	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

#SchedulingNodeAffinitiesInitParameters: {
	key?:      null | string @go(Key,*string)
	operator?: null | string @go(Operator,*string)
	values?: [...null | string] @go(Values,[]*string)
}

#SchedulingNodeAffinitiesObservation: {
	key?:      null | string @go(Key,*string)
	operator?: null | string @go(Operator,*string)
	values?: [...null | string] @go(Values,[]*string)
}

#SchedulingNodeAffinitiesParameters: {
	// +kubebuilder:validation:Optional
	key?: null | string @go(Key,*string)

	// +kubebuilder:validation:Optional
	operator?: null | string @go(Operator,*string)

	// +kubebuilder:validation:Optional
	values?: [...null | string] @go(Values,[]*string)
}

// InstanceFromTemplateSpec defines the desired state of InstanceFromTemplate
#InstanceFromTemplateSpec: {
	forProvider: #InstanceFromTemplateParameters @go(ForProvider)

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
	initProvider?: #InstanceFromTemplateInitParameters @go(InitProvider)
}

// InstanceFromTemplateStatus defines the observed state of InstanceFromTemplate.
#InstanceFromTemplateStatus: {
	atProvider?: #InstanceFromTemplateObservation @go(AtProvider)
}

// InstanceFromTemplate is the Schema for the InstanceFromTemplates API. Manages a VM instance resource within GCE.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#InstanceFromTemplate: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	spec:    #InstanceFromTemplateSpec   @go(Spec)
	status?: #InstanceFromTemplateStatus @go(Status)
}

// InstanceFromTemplateList contains a list of InstanceFromTemplates
#InstanceFromTemplateList: {
	items: [...#InstanceFromTemplate] @go(Items,[]InstanceFromTemplate)
}
