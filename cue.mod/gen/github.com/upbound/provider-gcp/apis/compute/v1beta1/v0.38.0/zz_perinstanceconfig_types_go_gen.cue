// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#PerInstanceConfigInitParameters: {
	// The minimal action to perform on the instance during an update.
	// Default is NONE. Possible values are:
	minimalAction?: null | string @go(MinimalAction,*string)

	// The most disruptive action to perform on the instance during an update.
	// Default is REPLACE. Possible values are:
	mostDisruptiveAllowedAction?: null | string @go(MostDisruptiveAllowedAction,*string)

	// The name for this per-instance config and its corresponding instance.
	name?: null | string @go(Name,*string)

	// The preserved state for this instance.
	// Structure is documented below.
	preservedState?: [...#PreservedStateInitParameters] @go(PreservedState,[]PreservedStateInitParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// When true, deleting this config will immediately remove any specified state from the underlying instance.
	// When false, deleting this config will not immediately remove any state from the underlying instance.
	// State will be removed on the next instance recreation or update.
	removeInstanceStateOnDestroy?: null | bool @go(RemoveInstanceStateOnDestroy,*bool)
}

#PerInstanceConfigObservation: {
	// an identifier for the resource with format {{project}}/{{zone}}/{{instance_group_manager}}/{{name}}
	id?: null | string @go(ID,*string)

	// The instance group manager this instance config is part of.
	instanceGroupManager?: null | string @go(InstanceGroupManager,*string)

	// The minimal action to perform on the instance during an update.
	// Default is NONE. Possible values are:
	minimalAction?: null | string @go(MinimalAction,*string)

	// The most disruptive action to perform on the instance during an update.
	// Default is REPLACE. Possible values are:
	mostDisruptiveAllowedAction?: null | string @go(MostDisruptiveAllowedAction,*string)

	// The name for this per-instance config and its corresponding instance.
	name?: null | string @go(Name,*string)

	// The preserved state for this instance.
	// Structure is documented below.
	preservedState?: [...#PreservedStateObservation] @go(PreservedState,[]PreservedStateObservation)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// When true, deleting this config will immediately remove any specified state from the underlying instance.
	// When false, deleting this config will not immediately remove any state from the underlying instance.
	// State will be removed on the next instance recreation or update.
	removeInstanceStateOnDestroy?: null | bool @go(RemoveInstanceStateOnDestroy,*bool)

	// Zone where the containing instance group manager is located
	zone?: null | string @go(Zone,*string)
}

#PerInstanceConfigParameters: {
	// The instance group manager this instance config is part of.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.InstanceGroupManager
	// +kubebuilder:validation:Optional
	instanceGroupManager?: null | string @go(InstanceGroupManager,*string)

	// The minimal action to perform on the instance during an update.
	// Default is NONE. Possible values are:
	// +kubebuilder:validation:Optional
	minimalAction?: null | string @go(MinimalAction,*string)

	// The most disruptive action to perform on the instance during an update.
	// Default is REPLACE. Possible values are:
	// +kubebuilder:validation:Optional
	mostDisruptiveAllowedAction?: null | string @go(MostDisruptiveAllowedAction,*string)

	// The name for this per-instance config and its corresponding instance.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The preserved state for this instance.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	preservedState?: [...#PreservedStateParameters] @go(PreservedState,[]PreservedStateParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// When true, deleting this config will immediately remove any specified state from the underlying instance.
	// When false, deleting this config will not immediately remove any state from the underlying instance.
	// State will be removed on the next instance recreation or update.
	// +kubebuilder:validation:Optional
	removeInstanceStateOnDestroy?: null | bool @go(RemoveInstanceStateOnDestroy,*bool)

	// Zone where the containing instance group manager is located
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.InstanceGroupManager
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("zone",false)
	// +kubebuilder:validation:Optional
	zone?: null | string @go(Zone,*string)
}

#PreservedStateDiskInitParameters: {
	// A value that prescribes what should happen to the stateful disk when the VM instance is deleted.
	// The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION.
	// NEVER - detach the disk when the VM is deleted, but do not delete the disk.
	// ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently
	// deleted from the instance group.
	// Default value is NEVER.
	// Possible values are: NEVER, ON_PERMANENT_INSTANCE_DELETION.
	deleteRule?: null | string @go(DeleteRule,*string)

	// A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance.
	deviceName?: null | string @go(DeviceName,*string)

	// The mode of the disk.
	// Default value is READ_WRITE.
	// Possible values are: READ_ONLY, READ_WRITE.
	mode?: null | string @go(Mode,*string)
}

#PreservedStateDiskObservation: {
	// A value that prescribes what should happen to the stateful disk when the VM instance is deleted.
	// The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION.
	// NEVER - detach the disk when the VM is deleted, but do not delete the disk.
	// ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently
	// deleted from the instance group.
	// Default value is NEVER.
	// Possible values are: NEVER, ON_PERMANENT_INSTANCE_DELETION.
	deleteRule?: null | string @go(DeleteRule,*string)

	// A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance.
	deviceName?: null | string @go(DeviceName,*string)

	// The mode of the disk.
	// Default value is READ_WRITE.
	// Possible values are: READ_ONLY, READ_WRITE.
	mode?: null | string @go(Mode,*string)

	// The URI of an existing persistent disk to attach under the specified device-name in the format
	// projects/project-id/zones/zone/disks/disk-name.
	source?: null | string @go(Source,*string)
}

#PreservedStateDiskParameters: {
	// A value that prescribes what should happen to the stateful disk when the VM instance is deleted.
	// The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION.
	// NEVER - detach the disk when the VM is deleted, but do not delete the disk.
	// ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently
	// deleted from the instance group.
	// Default value is NEVER.
	// Possible values are: NEVER, ON_PERMANENT_INSTANCE_DELETION.
	// +kubebuilder:validation:Optional
	deleteRule?: null | string @go(DeleteRule,*string)

	// A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance.
	// +kubebuilder:validation:Optional
	deviceName?: null | string @go(DeviceName,*string)

	// The mode of the disk.
	// Default value is READ_WRITE.
	// Possible values are: READ_ONLY, READ_WRITE.
	// +kubebuilder:validation:Optional
	mode?: null | string @go(Mode,*string)

	// The URI of an existing persistent disk to attach under the specified device-name in the format
	// projects/project-id/zones/zone/disks/disk-name.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Disk
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	source?: null | string @go(Source,*string)
}

#PreservedStateInitParameters: {
	// Stateful disks for the instance.
	// Structure is documented below.
	disk?: [...#PreservedStateDiskInitParameters] @go(Disk,[]PreservedStateDiskInitParameters)

	// Preserved metadata defined for this instance. This is a list of key->value pairs.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)
}

#PreservedStateObservation: {
	// Stateful disks for the instance.
	// Structure is documented below.
	disk?: [...#PreservedStateDiskObservation] @go(Disk,[]PreservedStateDiskObservation)

	// Preserved metadata defined for this instance. This is a list of key->value pairs.
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)
}

#PreservedStateParameters: {
	// Stateful disks for the instance.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	disk?: [...#PreservedStateDiskParameters] @go(Disk,[]PreservedStateDiskParameters)

	// Preserved metadata defined for this instance. This is a list of key->value pairs.
	// +kubebuilder:validation:Optional
	metadata?: {[string]: null | string} @go(Metadata,map[string]*string)
}

// PerInstanceConfigSpec defines the desired state of PerInstanceConfig
#PerInstanceConfigSpec: {
	forProvider: #PerInstanceConfigParameters @go(ForProvider)

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
	initProvider?: #PerInstanceConfigInitParameters @go(InitProvider)
}

// PerInstanceConfigStatus defines the observed state of PerInstanceConfig.
#PerInstanceConfigStatus: {
	atProvider?: #PerInstanceConfigObservation @go(AtProvider)
}

// PerInstanceConfig is the Schema for the PerInstanceConfigs API. A config defined for a single managed instance that belongs to an instance group manager.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#PerInstanceConfig: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #PerInstanceConfigSpec   @go(Spec)
	status?: #PerInstanceConfigStatus @go(Status)
}

// PerInstanceConfigList contains a list of PerInstanceConfigs
#PerInstanceConfigList: {
	items: [...#PerInstanceConfig] @go(Items,[]PerInstanceConfig)
}
