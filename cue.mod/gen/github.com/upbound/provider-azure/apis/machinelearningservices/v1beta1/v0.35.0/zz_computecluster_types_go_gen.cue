// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/machinelearningservices/v1beta1

package v1beta1

#ComputeClusterInitParameters: {
	// The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created.
	description?: null | string @go(Description,*string)

	// An identity block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
	identity?: [...#IdentityInitParameters] @go(Identity,[]IdentityInitParameters)

	// Whether local authentication methods is enabled. Defaults to true. Changing this forces a new Machine Learning Compute Cluster to be created.
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created.
	location?: null | string @go(Location,*string)

	// The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
	name?: null | string @go(Name,*string)

	// Credentials for an administrator user account that will be created on each compute node. A ssh block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
	ssh?: [...#SSHInitParameters] @go(SSH,[]SSHInitParameters)

	// A boolean value indicating whether enable the public SSH port. Changing this forces a new Machine Learning Compute Cluster to be created.
	sshPublicAccessEnabled?: null | bool @go(SSHPublicAccessEnabled,*bool)

	// A scale_settings block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
	scaleSettings?: [...#ScaleSettingsInitParameters] @go(ScaleSettings,[]ScaleSettingsInitParameters)

	// A mapping of tags which should be assigned to the Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are Dedicated and LowPriority.
	vmPriority?: null | string @go(VMPriority,*string)

	// The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created.
	vmSize?: null | string @go(VMSize,*string)
}

#ComputeClusterObservation: {
	// The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created.
	description?: null | string @go(Description,*string)

	// The ID of the Machine Learning Compute Cluster.
	id?: null | string @go(ID,*string)

	// An identity block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// Whether local authentication methods is enabled. Defaults to true. Changing this forces a new Machine Learning Compute Cluster to be created.
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created.
	location?: null | string @go(Location,*string)

	// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created.
	machineLearningWorkspaceId?: null | string @go(MachineLearningWorkspaceID,*string)

	// The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
	name?: null | string @go(Name,*string)

	// Credentials for an administrator user account that will be created on each compute node. A ssh block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
	ssh?: [...#SSHObservation] @go(SSH,[]SSHObservation)

	// A boolean value indicating whether enable the public SSH port. Changing this forces a new Machine Learning Compute Cluster to be created.
	sshPublicAccessEnabled?: null | bool @go(SSHPublicAccessEnabled,*bool)

	// A scale_settings block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
	scaleSettings?: [...#ScaleSettingsObservation] @go(ScaleSettings,[]ScaleSettingsObservation)

	// The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created.
	subnetResourceId?: null | string @go(SubnetResourceID,*string)

	// A mapping of tags which should be assigned to the Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are Dedicated and LowPriority.
	vmPriority?: null | string @go(VMPriority,*string)

	// The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created.
	vmSize?: null | string @go(VMSize,*string)
}

#ComputeClusterParameters: {
	// The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// An identity block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// Whether local authentication methods is enabled. Defaults to true. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	localAuthEnabled?: null | bool @go(LocalAuthEnabled,*bool)

	// The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/machinelearningservices/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	machineLearningWorkspaceId?: null | string @go(MachineLearningWorkspaceID,*string)

	// The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Credentials for an administrator user account that will be created on each compute node. A ssh block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	ssh?: [...#SSHParameters] @go(SSH,[]SSHParameters)

	// A boolean value indicating whether enable the public SSH port. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	sshPublicAccessEnabled?: null | bool @go(SSHPublicAccessEnabled,*bool)

	// A scale_settings block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	scaleSettings?: [...#ScaleSettingsParameters] @go(ScaleSettings,[]ScaleSettingsParameters)

	// The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetResourceId?: null | string @go(SubnetResourceID,*string)

	// A mapping of tags which should be assigned to the Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are Dedicated and LowPriority.
	// +kubebuilder:validation:Optional
	vmPriority?: null | string @go(VMPriority,*string)

	// The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	vmSize?: null | string @go(VMSize,*string)
}

#IdentityInitParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Compute Cluster. Changing this forces a new resource to be created.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Machine Learning Compute Cluster. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both). Changing this forces a new resource to be created.
	type?: null | string @go(Type,*string)
}

#IdentityObservation: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Compute Cluster. Changing this forces a new resource to be created.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster.
	principalId?: null | string @go(PrincipalID,*string)

	// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster.
	tenantId?: null | string @go(TenantID,*string)

	// Specifies the type of Managed Service Identity that should be configured on this Machine Learning Compute Cluster. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both). Changing this forces a new resource to be created.
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Machine Learning Compute Cluster. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Specifies the type of Managed Service Identity that should be configured on this Machine Learning Compute Cluster. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both). Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#SSHInitParameters: {
	// Password of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
	adminPassword?: null | string @go(AdminPassword,*string)

	// Name of the administrator user account which can be used to SSH to nodes. Changing this forces a new Machine Learning Compute Cluster to be created.
	adminUsername?: null | string @go(AdminUsername,*string)

	// SSH public key of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
	keyValue?: null | string @go(KeyValue,*string)
}

#SSHObservation: {
	// Password of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
	adminPassword?: null | string @go(AdminPassword,*string)

	// Name of the administrator user account which can be used to SSH to nodes. Changing this forces a new Machine Learning Compute Cluster to be created.
	adminUsername?: null | string @go(AdminUsername,*string)

	// SSH public key of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
	keyValue?: null | string @go(KeyValue,*string)
}

#SSHParameters: {
	// Password of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	adminPassword?: null | string @go(AdminPassword,*string)

	// Name of the administrator user account which can be used to SSH to nodes. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	adminUsername?: null | string @go(AdminUsername,*string)

	// SSH public key of the administrator user account. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	keyValue?: null | string @go(KeyValue,*string)
}

#ScaleSettingsInitParameters: {
	// Maximum node count. Changing this forces a new Machine Learning Compute Cluster to be created.
	maxNodeCount?: null | float64 @go(MaxNodeCount,*float64)

	// Minimal node count. Changing this forces a new Machine Learning Compute Cluster to be created.
	minNodeCount?: null | float64 @go(MinNodeCount,*float64)

	// Node Idle Time Before Scale Down: defines the time until the compute is shutdown when it has gone into Idle state. Is defined according to W3C XML schema standard for duration. Changing this forces a new Machine Learning Compute Cluster to be created.
	scaleDownNodesAfterIdleDuration?: null | string @go(ScaleDownNodesAfterIdleDuration,*string)
}

#ScaleSettingsObservation: {
	// Maximum node count. Changing this forces a new Machine Learning Compute Cluster to be created.
	maxNodeCount?: null | float64 @go(MaxNodeCount,*float64)

	// Minimal node count. Changing this forces a new Machine Learning Compute Cluster to be created.
	minNodeCount?: null | float64 @go(MinNodeCount,*float64)

	// Node Idle Time Before Scale Down: defines the time until the compute is shutdown when it has gone into Idle state. Is defined according to W3C XML schema standard for duration. Changing this forces a new Machine Learning Compute Cluster to be created.
	scaleDownNodesAfterIdleDuration?: null | string @go(ScaleDownNodesAfterIdleDuration,*string)
}

#ScaleSettingsParameters: {
	// Maximum node count. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	maxNodeCount?: null | float64 @go(MaxNodeCount,*float64)

	// Minimal node count. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	minNodeCount?: null | float64 @go(MinNodeCount,*float64)

	// Node Idle Time Before Scale Down: defines the time until the compute is shutdown when it has gone into Idle state. Is defined according to W3C XML schema standard for duration. Changing this forces a new Machine Learning Compute Cluster to be created.
	// +kubebuilder:validation:Optional
	scaleDownNodesAfterIdleDuration?: null | string @go(ScaleDownNodesAfterIdleDuration,*string)
}

// ComputeClusterSpec defines the desired state of ComputeCluster
#ComputeClusterSpec: {
	forProvider: #ComputeClusterParameters @go(ForProvider)

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
	initProvider?: #ComputeClusterInitParameters @go(InitProvider)
}

// ComputeClusterStatus defines the observed state of ComputeCluster.
#ComputeClusterStatus: {
	atProvider?: #ComputeClusterObservation @go(AtProvider)
}

// ComputeCluster is the Schema for the ComputeClusters API. Manages a Machine Learning Compute Cluster.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ComputeCluster: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.scaleSettings) || has(self.initProvider.scaleSettings)",message="scaleSettings is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.vmPriority) || has(self.initProvider.vmPriority)",message="vmPriority is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.vmSize) || has(self.initProvider.vmSize)",message="vmSize is a required parameter"
	spec:    #ComputeClusterSpec   @go(Spec)
	status?: #ComputeClusterStatus @go(Status)
}

// ComputeClusterList contains a list of ComputeClusters
#ComputeClusterList: {
	items: [...#ComputeCluster] @go(Items,[]ComputeCluster)
}
