// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#RegionInstanceGroupManagerAutoHealingPoliciesObservation: {
	// The health check resource that signals autohealing.
	healthCheck?: null | string @go(HealthCheck,*string)

	// The number of seconds that the managed instance group waits before
	// it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600.
	initialDelaySec?: null | float64 @go(InitialDelaySec,*float64)
}

#RegionInstanceGroupManagerAutoHealingPoliciesParameters: {
	// The health check resource that signals autohealing.
	// +crossplane:generate:reference:type=HealthCheck
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-gcp/config/common.ExtractResourceID()
	// +kubebuilder:validation:Optional
	healthCheck?: null | string @go(HealthCheck,*string)

	// The number of seconds that the managed instance group waits before
	// it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600.
	// +kubebuilder:validation:Required
	initialDelaySec?: null | float64 @go(InitialDelaySec,*float64)
}

#RegionInstanceGroupManagerNamedPortObservation: {
	// The name of the port.
	name?: null | string @go(Name,*string)

	// The port number.
	port?: null | float64 @go(Port,*float64)
}

#RegionInstanceGroupManagerNamedPortParameters: {
	// The name of the port.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The port number.
	// +kubebuilder:validation:Required
	port?: null | float64 @go(Port,*float64)
}

#RegionInstanceGroupManagerObservation: {
	// The autohealing policies for this managed instance
	// group. You can specify only one value. Structure is documented below. For more information, see the official documentation.
	autoHealingPolicies?: [...#RegionInstanceGroupManagerAutoHealingPoliciesObservation] @go(AutoHealingPolicies,[]RegionInstanceGroupManagerAutoHealingPoliciesObservation)

	// The base instance name to use for
	// instances in this group. The value must be a valid
	// RFC1035 name. Supported characters
	// are lowercase letters, numbers, and hyphens (-). Instances are named by
	// appending a hyphen and a random four-character string to the base instance
	// name.
	baseInstanceName?: null | string @go(BaseInstanceName,*string)

	// An optional textual description of the instance
	// group manager.
	description?: null | string @go(Description,*string)

	// The shape to which the group converges either proactively or on resize events (depending on the value set in update_policy.0.instance_redistribution_type). For more information see the official documentation.
	distributionPolicyTargetShape?: null | string @go(DistributionPolicyTargetShape,*string)

	// The distribution policy for this managed instance
	// group. You can specify one or more values. For more information, see the official documentation.
	distributionPolicyZones?: [...null | string] @go(DistributionPolicyZones,[]*string)

	// The fingerprint of the instance group manager.
	fingerprint?: null | string @go(Fingerprint,*string)

	// an identifier for the resource with format {{disk.name}}
	id?: null | string @go(ID,*string)

	// The full URL of the instance group created by the manager.
	instanceGroup?: null | string @go(InstanceGroup,*string)

	// Pagination behavior of the listManagedInstances API
	// method for this managed instance group. Valid values are: PAGELESS, PAGINATED.
	// If PAGELESS (default), Pagination is disabled for the group's listManagedInstances API method.
	// maxResults and pageToken query parameters are ignored and all instances are returned in a single
	// response. If PAGINATED, pagination is enabled, maxResults and pageToken query parameters are
	// respected.
	listManagedInstancesResults?: null | string @go(ListManagedInstancesResults,*string)

	// The name of the instance group manager. Must be 1-63
	// characters long and comply with
	// RFC1035. Supported characters
	// include lowercase letters, numbers, and hyphens.
	name?: null | string @go(Name,*string)

	// The named port configuration. See the section below
	// for details on configuration.
	namedPort?: [...#RegionInstanceGroupManagerNamedPortObservation] @go(NamedPort,[]RegionInstanceGroupManagerNamedPortObservation)

	// The ID of the project in which the resource belongs. If it
	// is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The region where the managed instance group resides. If not provided, the provider region is used.
	region?: null | string @go(Region,*string)

	// The URL of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the official documentation. Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the update_policy.
	statefulDisk?: [...#RegionInstanceGroupManagerStatefulDiskObservation] @go(StatefulDisk,[]RegionInstanceGroupManagerStatefulDiskObservation)
	status?: [...#RegionInstanceGroupManagerStatusObservation] @go(Status,[]RegionInstanceGroupManagerStatusObservation)

	// The full URL of all target pools to which new
	// instances in the group are added. Updating the target pools attribute does
	// not affect existing instances.
	targetPools?: [...null | string] @go(TargetPools,[]*string)

	// The target number of running instances for this managed
	// instance group. This value should always be explicitly set unless this resource is attached to
	// an autoscaler, in which case it should never be set. Defaults to 0.
	targetSize?: null | float64 @go(TargetSize,*float64)

	// The update policy for this managed instance group. Structure is documented below. For more information, see the official documentation and API
	updatePolicy?: [...#RegionInstanceGroupManagerUpdatePolicyObservation] @go(UpdatePolicy,[]RegionInstanceGroupManagerUpdatePolicyObservation)

	// Application versions managed by this instance group. Each
	// version deals with a specific instance template, allowing canary release scenarios.
	// Structure is documented below.
	version?: [...#RegionInstanceGroupManagerVersionObservation] @go(Version,[]RegionInstanceGroupManagerVersionObservation)

	// Whether to wait for all instances to be created/updated before
	// returning.
	waitForInstances?: null | bool @go(WaitForInstances,*bool)

	// When used with wait_for_instances it specifies the status to wait for.
	// When STABLE is specified this resource will wait until the instances are stable before returning. When UPDATED is
	// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
	// instances to be stable before returning. The possible values are STABLE and UPDATED
	waitForInstancesStatus?: null | string @go(WaitForInstancesStatus,*string)
}

#RegionInstanceGroupManagerParameters: {
	// The autohealing policies for this managed instance
	// group. You can specify only one value. Structure is documented below. For more information, see the official documentation.
	// +kubebuilder:validation:Optional
	autoHealingPolicies?: [...#RegionInstanceGroupManagerAutoHealingPoliciesParameters] @go(AutoHealingPolicies,[]RegionInstanceGroupManagerAutoHealingPoliciesParameters)

	// The base instance name to use for
	// instances in this group. The value must be a valid
	// RFC1035 name. Supported characters
	// are lowercase letters, numbers, and hyphens (-). Instances are named by
	// appending a hyphen and a random four-character string to the base instance
	// name.
	// +kubebuilder:validation:Optional
	baseInstanceName?: null | string @go(BaseInstanceName,*string)

	// An optional textual description of the instance
	// group manager.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The shape to which the group converges either proactively or on resize events (depending on the value set in update_policy.0.instance_redistribution_type). For more information see the official documentation.
	// +kubebuilder:validation:Optional
	distributionPolicyTargetShape?: null | string @go(DistributionPolicyTargetShape,*string)

	// The distribution policy for this managed instance
	// group. You can specify one or more values. For more information, see the official documentation.
	// +kubebuilder:validation:Optional
	distributionPolicyZones?: [...null | string] @go(DistributionPolicyZones,[]*string)

	// Pagination behavior of the listManagedInstances API
	// method for this managed instance group. Valid values are: PAGELESS, PAGINATED.
	// If PAGELESS (default), Pagination is disabled for the group's listManagedInstances API method.
	// maxResults and pageToken query parameters are ignored and all instances are returned in a single
	// response. If PAGINATED, pagination is enabled, maxResults and pageToken query parameters are
	// respected.
	// +kubebuilder:validation:Optional
	listManagedInstancesResults?: null | string @go(ListManagedInstancesResults,*string)

	// The name of the instance group manager. Must be 1-63
	// characters long and comply with
	// RFC1035. Supported characters
	// include lowercase letters, numbers, and hyphens.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The named port configuration. See the section below
	// for details on configuration.
	// +kubebuilder:validation:Optional
	namedPort?: [...#RegionInstanceGroupManagerNamedPortParameters] @go(NamedPort,[]RegionInstanceGroupManagerNamedPortParameters)

	// The ID of the project in which the resource belongs. If it
	// is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The region where the managed instance group resides. If not provided, the provider region is used.
	// +kubebuilder:validation:Optional
	region?: null | string @go(Region,*string)

	// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the official documentation. Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the update_policy.
	// +kubebuilder:validation:Optional
	statefulDisk?: [...#RegionInstanceGroupManagerStatefulDiskParameters] @go(StatefulDisk,[]RegionInstanceGroupManagerStatefulDiskParameters)

	// The full URL of all target pools to which new
	// instances in the group are added. Updating the target pools attribute does
	// not affect existing instances.
	// +crossplane:generate:reference:type=TargetPool
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-gcp/config/common.SelfLinkExtractor()
	// +kubebuilder:validation:Optional
	targetPools?: [...null | string] @go(TargetPools,[]*string)

	// The target number of running instances for this managed
	// instance group. This value should always be explicitly set unless this resource is attached to
	// an autoscaler, in which case it should never be set. Defaults to 0.
	// +kubebuilder:validation:Optional
	targetSize?: null | float64 @go(TargetSize,*float64)

	// The update policy for this managed instance group. Structure is documented below. For more information, see the official documentation and API
	// +kubebuilder:validation:Optional
	updatePolicy?: [...#RegionInstanceGroupManagerUpdatePolicyParameters] @go(UpdatePolicy,[]RegionInstanceGroupManagerUpdatePolicyParameters)

	// Application versions managed by this instance group. Each
	// version deals with a specific instance template, allowing canary release scenarios.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	version?: [...#RegionInstanceGroupManagerVersionParameters] @go(Version,[]RegionInstanceGroupManagerVersionParameters)

	// Whether to wait for all instances to be created/updated before
	// returning.
	// +kubebuilder:validation:Optional
	waitForInstances?: null | bool @go(WaitForInstances,*bool)

	// When used with wait_for_instances it specifies the status to wait for.
	// When STABLE is specified this resource will wait until the instances are stable before returning. When UPDATED is
	// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
	// instances to be stable before returning. The possible values are STABLE and UPDATED
	// +kubebuilder:validation:Optional
	waitForInstancesStatus?: null | string @go(WaitForInstancesStatus,*string)
}

#RegionInstanceGroupManagerStatefulDiskObservation: {
	// , A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the disk when the VM is deleted, but do not delete the disk. ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently deleted from the instance group. The default is NEVER.
	deleteRule?: null | string @go(DeleteRule,*string)

	// , The device name of the disk to be attached.
	deviceName?: null | string @go(DeviceName,*string)
}

#RegionInstanceGroupManagerStatefulDiskParameters: {
	// , A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the disk when the VM is deleted, but do not delete the disk. ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently deleted from the instance group. The default is NEVER.
	// +kubebuilder:validation:Optional
	deleteRule?: null | string @go(DeleteRule,*string)

	// , The device name of the disk to be attached.
	// +kubebuilder:validation:Required
	deviceName?: null | string @go(DeviceName,*string)
}

#RegionInstanceGroupManagerStatusObservation: {
	// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
	isStable?: null | bool @go(IsStable,*bool)

	// Stateful status of the given Instance Group Manager.
	stateful?: [...#StatusStatefulObservation] @go(Stateful,[]StatusStatefulObservation)

	// A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
	versionTarget?: [...#StatusVersionTargetObservation] @go(VersionTarget,[]StatusVersionTargetObservation)
}

#RegionInstanceGroupManagerStatusParameters: {
}

#RegionInstanceGroupManagerUpdatePolicyObservation: {
	// - The instance redistribution policy for regional managed instance groups. Valid values are: "PROACTIVE", "NONE". If PROACTIVE (default), the group attempts to maintain an even distribution of VM instances across zones in the region. If NONE, proactive redistribution is disabled.
	instanceRedistributionType?: null | string @go(InstanceRedistributionType,*string)

	// , The maximum number of instances that can be created above the specified targetSize during the update process. Conflicts with max_surge_percent. It has to be either 0 or at least equal to the number of zones.  If fixed values are used, at least one of max_unavailable_fixed or max_surge_fixed must be greater than 0.
	maxSurgeFixed?: null | float64 @go(MaxSurgeFixed,*float64)

	// , The maximum number of instances(calculated as percentage) that can be created above the specified targetSize during the update process. Conflicts with max_surge_fixed. Percent value is only allowed for regional managed instance groups with size at least 10.
	maxSurgePercent?: null | float64 @go(MaxSurgePercent,*float64)

	// , The maximum number of instances that can be unavailable during the update process. Conflicts with max_unavailable_percent. It has to be either 0 or at least equal to the number of zones. If fixed values are used, at least one of max_unavailable_fixed or max_surge_fixed must be greater than 0.
	maxUnavailableFixed?: null | float64 @go(MaxUnavailableFixed,*float64)

	// , The maximum number of instances(calculated as percentage) that can be unavailable during the update process. Conflicts with max_unavailable_fixed. Percent value is only allowed for regional managed instance groups with size at least 10.
	maxUnavailablePercent?: null | float64 @go(MaxUnavailablePercent,*float64)

	// - Minimal action to be taken on an instance. You can specify either REFRESH to update without stopping instances, RESTART to restart existing instances or REPLACE to delete and create new instances from the target template. If you specify a REFRESH, the Updater will attempt to perform that action only. However, if the Updater determines that the minimal action you specify is not enough to perform the update, it might perform a more disruptive action.
	minimalAction?: null | string @go(MinimalAction,*string)

	// - Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to allow actions that do not need instance restart, RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all.
	mostDisruptiveAllowedAction?: null | string @go(MostDisruptiveAllowedAction,*string)

	// , The instance replacement method for managed instance groups. Valid values are: "RECREATE", "SUBSTITUTE". If SUBSTITUTE (default), the group replaces VM instances with new instances that have randomly generated names. If RECREATE, instance names are preserved.  You must also set max_unavailable_fixed or max_unavailable_percent to be greater than 0.
	replacementMethod?: null | string @go(ReplacementMethod,*string)

	// - The type of update process. You can specify either PROACTIVE so that the instance group manager proactively executes actions in order to bring instances to their target versions or OPPORTUNISTIC so that no action is proactively executed but the update will be performed as part of other actions (for example, resizes or recreateInstances calls).
	type?: null | string @go(Type,*string)
}

#RegionInstanceGroupManagerUpdatePolicyParameters: {
	// - The instance redistribution policy for regional managed instance groups. Valid values are: "PROACTIVE", "NONE". If PROACTIVE (default), the group attempts to maintain an even distribution of VM instances across zones in the region. If NONE, proactive redistribution is disabled.
	// +kubebuilder:validation:Optional
	instanceRedistributionType?: null | string @go(InstanceRedistributionType,*string)

	// , The maximum number of instances that can be created above the specified targetSize during the update process. Conflicts with max_surge_percent. It has to be either 0 or at least equal to the number of zones.  If fixed values are used, at least one of max_unavailable_fixed or max_surge_fixed must be greater than 0.
	// +kubebuilder:validation:Optional
	maxSurgeFixed?: null | float64 @go(MaxSurgeFixed,*float64)

	// , The maximum number of instances(calculated as percentage) that can be created above the specified targetSize during the update process. Conflicts with max_surge_fixed. Percent value is only allowed for regional managed instance groups with size at least 10.
	// +kubebuilder:validation:Optional
	maxSurgePercent?: null | float64 @go(MaxSurgePercent,*float64)

	// , The maximum number of instances that can be unavailable during the update process. Conflicts with max_unavailable_percent. It has to be either 0 or at least equal to the number of zones. If fixed values are used, at least one of max_unavailable_fixed or max_surge_fixed must be greater than 0.
	// +kubebuilder:validation:Optional
	maxUnavailableFixed?: null | float64 @go(MaxUnavailableFixed,*float64)

	// , The maximum number of instances(calculated as percentage) that can be unavailable during the update process. Conflicts with max_unavailable_fixed. Percent value is only allowed for regional managed instance groups with size at least 10.
	// +kubebuilder:validation:Optional
	maxUnavailablePercent?: null | float64 @go(MaxUnavailablePercent,*float64)

	// - Minimal action to be taken on an instance. You can specify either REFRESH to update without stopping instances, RESTART to restart existing instances or REPLACE to delete and create new instances from the target template. If you specify a REFRESH, the Updater will attempt to perform that action only. However, if the Updater determines that the minimal action you specify is not enough to perform the update, it might perform a more disruptive action.
	// +kubebuilder:validation:Required
	minimalAction?: null | string @go(MinimalAction,*string)

	// - Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to allow actions that do not need instance restart, RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all.
	// +kubebuilder:validation:Optional
	mostDisruptiveAllowedAction?: null | string @go(MostDisruptiveAllowedAction,*string)

	// , The instance replacement method for managed instance groups. Valid values are: "RECREATE", "SUBSTITUTE". If SUBSTITUTE (default), the group replaces VM instances with new instances that have randomly generated names. If RECREATE, instance names are preserved.  You must also set max_unavailable_fixed or max_unavailable_percent to be greater than 0.
	// +kubebuilder:validation:Optional
	replacementMethod?: null | string @go(ReplacementMethod,*string)

	// - The type of update process. You can specify either PROACTIVE so that the instance group manager proactively executes actions in order to bring instances to their target versions or OPPORTUNISTIC so that no action is proactively executed but the update will be performed as part of other actions (for example, resizes or recreateInstances calls).
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#RegionInstanceGroupManagerVersionObservation: {
	// - The full URL to an instance template from which all new instances of this version will be created.
	instanceTemplate?: null | string @go(InstanceTemplate,*string)

	// - Version name.
	name?: null | string @go(Name,*string)

	// - The number of instances calculated as a fixed number or a percentage depending on the settings. Structure is documented below.
	targetSize?: [...#VersionTargetSizeObservation] @go(TargetSize,[]VersionTargetSizeObservation)
}

#RegionInstanceGroupManagerVersionParameters: {
	// - The full URL to an instance template from which all new instances of this version will be created.
	// +crossplane:generate:reference:type=InstanceTemplate
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-gcp/config/common.ExtractResourceID()
	// +kubebuilder:validation:Optional
	instanceTemplate?: null | string @go(InstanceTemplate,*string)

	// - Version name.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// - The number of instances calculated as a fixed number or a percentage depending on the settings. Structure is documented below.
	// +kubebuilder:validation:Optional
	targetSize?: [...#VersionTargetSizeParameters] @go(TargetSize,[]VersionTargetSizeParameters)
}

#StatefulPerInstanceConfigsObservation: {
	// A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
	allEffective?: null | bool @go(AllEffective,*bool)
}

#StatefulPerInstanceConfigsParameters: {
}

#StatusStatefulObservation: {
	// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful config even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
	hasStatefulConfig?: null | bool @go(HasStatefulConfig,*bool)

	// Status of per-instance configs on the instance.
	perInstanceConfigs?: [...#StatefulPerInstanceConfigsObservation] @go(PerInstanceConfigs,[]StatefulPerInstanceConfigsObservation)
}

#StatusStatefulParameters: {
}

#StatusVersionTargetObservation: {
	isReached?: null | bool @go(IsReached,*bool)
}

#StatusVersionTargetParameters: {
}

#VersionTargetSizeObservation: {
	// , The number of instances which are managed for this version. Conflicts with percent.
	fixed?: null | float64 @go(Fixed,*float64)

	// , The number of instances (calculated as percentage) which are managed for this version. Conflicts with fixed.
	// Note that when using percent, rounding will be in favor of explicitly set target_size values; a managed instance group with 2 instances and 2 versions,
	// one of which has a target_size.percent of 60 will create 2 instances of that version.
	percent?: null | float64 @go(Percent,*float64)
}

#VersionTargetSizeParameters: {
	// , The number of instances which are managed for this version. Conflicts with percent.
	// +kubebuilder:validation:Optional
	fixed?: null | float64 @go(Fixed,*float64)

	// , The number of instances (calculated as percentage) which are managed for this version. Conflicts with fixed.
	// Note that when using percent, rounding will be in favor of explicitly set target_size values; a managed instance group with 2 instances and 2 versions,
	// one of which has a target_size.percent of 60 will create 2 instances of that version.
	// +kubebuilder:validation:Optional
	percent?: null | float64 @go(Percent,*float64)
}

// RegionInstanceGroupManagerSpec defines the desired state of RegionInstanceGroupManager
#RegionInstanceGroupManagerSpec: {
	forProvider: #RegionInstanceGroupManagerParameters @go(ForProvider)
}

// RegionInstanceGroupManagerStatus defines the observed state of RegionInstanceGroupManager.
#RegionInstanceGroupManagerStatus: {
	atProvider?: #RegionInstanceGroupManagerObservation @go(AtProvider)
}

// RegionInstanceGroupManager is the Schema for the RegionInstanceGroupManagers API. Manages an Regional Instance Group within GCE.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#RegionInstanceGroupManager: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.baseInstanceName)",message="baseInstanceName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.region)",message="region is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.version)",message="version is a required parameter"
	spec:    #RegionInstanceGroupManagerSpec   @go(Spec)
	status?: #RegionInstanceGroupManagerStatus @go(Status)
}

// RegionInstanceGroupManagerList contains a list of RegionInstanceGroupManagers
#RegionInstanceGroupManagerList: {
	items: [...#RegionInstanceGroupManager] @go(Items,[]RegionInstanceGroupManager)
}
