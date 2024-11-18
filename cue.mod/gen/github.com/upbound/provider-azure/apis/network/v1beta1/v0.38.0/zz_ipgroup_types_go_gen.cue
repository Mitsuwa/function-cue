// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#IPGroupInitParameters: {
	// A list of CIDRs or IP addresses.
	cidrs?: [...null | string] @go(Cidrs,[]*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#IPGroupObservation: {
	// A list of CIDRs or IP addresses.
	cidrs?: [...null | string] @go(Cidrs,[]*string)

	// A firewall_ids block as defined below.
	firewallIds?: [...null | string] @go(FirewallIds,[]*string)

	// A firewall_policy_ids block as defined below.
	firewallPolicyIds?: [...null | string] @go(FirewallPolicyIds,[]*string)

	// The ID of the IP group.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the IP group. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#IPGroupParameters: {
	// A list of CIDRs or IP addresses.
	// +kubebuilder:validation:Optional
	cidrs?: [...null | string] @go(Cidrs,[]*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the IP group. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// IPGroupSpec defines the desired state of IPGroup
#IPGroupSpec: {
	forProvider: #IPGroupParameters @go(ForProvider)

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
	initProvider?: #IPGroupInitParameters @go(InitProvider)
}

// IPGroupStatus defines the observed state of IPGroup.
#IPGroupStatus: {
	atProvider?: #IPGroupObservation @go(AtProvider)
}

// IPGroup is the Schema for the IPGroups API. Manages an IP group which contains a list of CIDRs and/or IP addresses.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#IPGroup: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #IPGroupSpec   @go(Spec)
	status?: #IPGroupStatus @go(Status)
}

// IPGroupList contains a list of IPGroups
#IPGroupList: {
	items: [...#IPGroup] @go(Items,[]IPGroup)
}
