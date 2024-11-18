// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#GuestAcceleratorsInitParameters: {
	// The number of the guest accelerator cards exposed to
	// this instance.
	acceleratorCount?: null | float64 @go(AcceleratorCount,*float64)

	// The full or partial URL of the accelerator type to
	// attach to this instance. For example:
	// projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100
	// If you are creating an instance template, specify only the accelerator name.
	acceleratorType?: null | string @go(AcceleratorType,*string)
}

#GuestAcceleratorsObservation: {
	// The number of the guest accelerator cards exposed to
	// this instance.
	acceleratorCount?: null | float64 @go(AcceleratorCount,*float64)

	// The full or partial URL of the accelerator type to
	// attach to this instance. For example:
	// projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100
	// If you are creating an instance template, specify only the accelerator name.
	acceleratorType?: null | string @go(AcceleratorType,*string)
}

#GuestAcceleratorsParameters: {
	// The number of the guest accelerator cards exposed to
	// this instance.
	// +kubebuilder:validation:Optional
	acceleratorCount?: null | float64 @go(AcceleratorCount,*float64)

	// The full or partial URL of the accelerator type to
	// attach to this instance. For example:
	// projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100
	// If you are creating an instance template, specify only the accelerator name.
	// +kubebuilder:validation:Optional
	acceleratorType?: null | string @go(AcceleratorType,*string)
}

#InstancePropertiesInitParameters: {
	// Guest accelerator type and count.
	// Structure is documented below.
	guestAccelerators?: [...#GuestAcceleratorsInitParameters] @go(GuestAccelerators,[]GuestAcceleratorsInitParameters)

	// The amount of local ssd to reserve with each instance. This
	// reserves disks of type local-ssd.
	// Structure is documented below.
	localSsds?: [...#LocalSsdsInitParameters] @go(LocalSsds,[]LocalSsdsInitParameters)

	// The name of the machine type to reserve.
	machineType?: null | string @go(MachineType,*string)

	// The minimum CPU platform for the reservation. For example,
	// "Intel Skylake". See
	// the CPU platform availability reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)
	// for information on available CPU platforms.
	minCpuPlatform?: null | string @go(MinCPUPlatform,*string)
}

#InstancePropertiesObservation: {
	// Guest accelerator type and count.
	// Structure is documented below.
	guestAccelerators?: [...#GuestAcceleratorsObservation] @go(GuestAccelerators,[]GuestAcceleratorsObservation)

	// The amount of local ssd to reserve with each instance. This
	// reserves disks of type local-ssd.
	// Structure is documented below.
	localSsds?: [...#LocalSsdsObservation] @go(LocalSsds,[]LocalSsdsObservation)

	// The name of the machine type to reserve.
	machineType?: null | string @go(MachineType,*string)

	// The minimum CPU platform for the reservation. For example,
	// "Intel Skylake". See
	// the CPU platform availability reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)
	// for information on available CPU platforms.
	minCpuPlatform?: null | string @go(MinCPUPlatform,*string)
}

#InstancePropertiesParameters: {
	// Guest accelerator type and count.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	guestAccelerators?: [...#GuestAcceleratorsParameters] @go(GuestAccelerators,[]GuestAcceleratorsParameters)

	// The amount of local ssd to reserve with each instance. This
	// reserves disks of type local-ssd.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	localSsds?: [...#LocalSsdsParameters] @go(LocalSsds,[]LocalSsdsParameters)

	// The name of the machine type to reserve.
	// +kubebuilder:validation:Optional
	machineType?: null | string @go(MachineType,*string)

	// The minimum CPU platform for the reservation. For example,
	// "Intel Skylake". See
	// the CPU platform availability reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)
	// for information on available CPU platforms.
	// +kubebuilder:validation:Optional
	minCpuPlatform?: null | string @go(MinCPUPlatform,*string)
}

#LocalSsdsInitParameters: {
	// The size of the disk in base-2 GB.
	diskSizeGb?: null | float64 @go(DiskSizeGb,*float64)

	// The disk interface to use for attaching this disk.
	// Default value is SCSI.
	// Possible values are: SCSI, NVME.
	interface?: null | string @go(Interface,*string)
}

#LocalSsdsObservation: {
	// The size of the disk in base-2 GB.
	diskSizeGb?: null | float64 @go(DiskSizeGb,*float64)

	// The disk interface to use for attaching this disk.
	// Default value is SCSI.
	// Possible values are: SCSI, NVME.
	interface?: null | string @go(Interface,*string)
}

#LocalSsdsParameters: {
	// The size of the disk in base-2 GB.
	// +kubebuilder:validation:Optional
	diskSizeGb?: null | float64 @go(DiskSizeGb,*float64)

	// The disk interface to use for attaching this disk.
	// Default value is SCSI.
	// Possible values are: SCSI, NVME.
	// +kubebuilder:validation:Optional
	interface?: null | string @go(Interface,*string)
}

#ReservationInitParameters: {
	// An optional description of this resource.
	description?: null | string @go(Description,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The share setting for reservations.
	// Structure is documented below.
	shareSettings?: [...#ReservationShareSettingsInitParameters] @go(ShareSettings,[]ReservationShareSettingsInitParameters)

	// Reservation for instances with specific machine shapes.
	// Structure is documented below.
	specificReservation?: [...#ReservationSpecificReservationInitParameters] @go(SpecificReservation,[]ReservationSpecificReservationInitParameters)

	// When set to true, only VMs that target this reservation by name can
	// consume this reservation. Otherwise, it can be consumed by VMs with
	// affinity for any reservation. Defaults to false.
	specificReservationRequired?: null | bool @go(SpecificReservationRequired,*bool)
}

#ReservationObservation: {
	// Full or partial URL to a parent commitment. This field displays for
	// reservations that are tied to a commitment.
	commitment?: null | string @go(Commitment,*string)

	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// An optional description of this resource.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format projects/{{project}}/zones/{{zone}}/reservations/{{name}}
	id?: null | string @go(ID,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// The share setting for reservations.
	// Structure is documented below.
	shareSettings?: [...#ReservationShareSettingsObservation] @go(ShareSettings,[]ReservationShareSettingsObservation)

	// Reservation for instances with specific machine shapes.
	// Structure is documented below.
	specificReservation?: [...#ReservationSpecificReservationObservation] @go(SpecificReservation,[]ReservationSpecificReservationObservation)

	// When set to true, only VMs that target this reservation by name can
	// consume this reservation. Otherwise, it can be consumed by VMs with
	// affinity for any reservation. Defaults to false.
	specificReservationRequired?: null | bool @go(SpecificReservationRequired,*bool)

	// The status of the reservation.
	status?: null | string @go(Status,*string)

	// The zone where the reservation is made.
	zone?: null | string @go(Zone,*string)
}

#ReservationParameters: {
	// An optional description of this resource.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The share setting for reservations.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	shareSettings?: [...#ReservationShareSettingsParameters] @go(ShareSettings,[]ReservationShareSettingsParameters)

	// Reservation for instances with specific machine shapes.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	specificReservation?: [...#ReservationSpecificReservationParameters] @go(SpecificReservation,[]ReservationSpecificReservationParameters)

	// When set to true, only VMs that target this reservation by name can
	// consume this reservation. Otherwise, it can be consumed by VMs with
	// affinity for any reservation. Defaults to false.
	// +kubebuilder:validation:Optional
	specificReservationRequired?: null | bool @go(SpecificReservationRequired,*bool)

	// The zone where the reservation is made.
	// +kubebuilder:validation:Required
	zone?: null | string @go(Zone,*string)
}

#ReservationShareSettingsInitParameters: {
	// A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
	// Structure is documented below.
	projectMap?: [...#ShareSettingsProjectMapInitParameters] @go(ProjectMap,[]ShareSettingsProjectMapInitParameters)

	// Type of sharing for this shared-reservation
	// Possible values are: LOCAL, SPECIFIC_PROJECTS.
	shareType?: null | string @go(ShareType,*string)
}

#ReservationShareSettingsObservation: {
	// A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
	// Structure is documented below.
	projectMap?: [...#ShareSettingsProjectMapObservation] @go(ProjectMap,[]ShareSettingsProjectMapObservation)

	// Type of sharing for this shared-reservation
	// Possible values are: LOCAL, SPECIFIC_PROJECTS.
	shareType?: null | string @go(ShareType,*string)
}

#ReservationShareSettingsParameters: {
	// A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	projectMap?: [...#ShareSettingsProjectMapParameters] @go(ProjectMap,[]ShareSettingsProjectMapParameters)

	// Type of sharing for this shared-reservation
	// Possible values are: LOCAL, SPECIFIC_PROJECTS.
	// +kubebuilder:validation:Optional
	shareType?: null | string @go(ShareType,*string)
}

#ReservationSpecificReservationInitParameters: {
	// The number of resources that are allocated.
	count?: null | float64 @go(Count,*float64)

	// The instance properties for the reservation.
	// Structure is documented below.
	instanceProperties?: [...#InstancePropertiesInitParameters] @go(InstanceProperties,[]InstancePropertiesInitParameters)
}

#ReservationSpecificReservationObservation: {
	// The number of resources that are allocated.
	count?: null | float64 @go(Count,*float64)

	// (Output)
	// How many instances are in use.
	inUseCount?: null | float64 @go(InUseCount,*float64)

	// The instance properties for the reservation.
	// Structure is documented below.
	instanceProperties?: [...#InstancePropertiesObservation] @go(InstanceProperties,[]InstancePropertiesObservation)
}

#ReservationSpecificReservationParameters: {
	// The number of resources that are allocated.
	// +kubebuilder:validation:Optional
	count?: null | float64 @go(Count,*float64)

	// The instance properties for the reservation.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	instanceProperties?: [...#InstancePropertiesParameters] @go(InstanceProperties,[]InstancePropertiesParameters)
}

#ShareSettingsProjectMapInitParameters: {
	// The identifier for this object. Format specified above.
	id?: null | string @go(ID,*string)

	// The project id/number, should be same as the key of this project config in the project map.
	projectId?: null | string @go(ProjectID,*string)
}

#ShareSettingsProjectMapObservation: {
	// The identifier for this object. Format specified above.
	id?: null | string @go(ID,*string)

	// The project id/number, should be same as the key of this project config in the project map.
	projectId?: null | string @go(ProjectID,*string)
}

#ShareSettingsProjectMapParameters: {
	// The identifier for this object. Format specified above.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// The project id/number, should be same as the key of this project config in the project map.
	// +kubebuilder:validation:Optional
	projectId?: null | string @go(ProjectID,*string)
}

// ReservationSpec defines the desired state of Reservation
#ReservationSpec: {
	forProvider: #ReservationParameters @go(ForProvider)

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
	initProvider?: #ReservationInitParameters @go(InitProvider)
}

// ReservationStatus defines the observed state of Reservation.
#ReservationStatus: {
	atProvider?: #ReservationObservation @go(AtProvider)
}

// Reservation is the Schema for the Reservations API. Represents a reservation resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Reservation: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.specificReservation) || has(self.initProvider.specificReservation)",message="specificReservation is a required parameter"
	spec:    #ReservationSpec   @go(Spec)
	status?: #ReservationStatus @go(Status)
}

// ReservationList contains a list of Reservations
#ReservationList: {
	items: [...#Reservation] @go(Items,[]Reservation)
}
