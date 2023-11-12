// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#FirewallPolicyInitParameters: {
	// An optional description of this resource. Provide this property when you create the resource.
	description?: null | string @go(Description,*string)

	// The parent of the firewall policy.
	parent?: null | string @go(Parent,*string)

	// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
	shortName?: null | string @go(ShortName,*string)
}

#FirewallPolicyObservation: {
	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// An optional description of this resource. Provide this property when you create the resource.
	description?: null | string @go(Description,*string)

	// Fingerprint of the resource. This field is used internally during updates of this resource.
	fingerprint?: null | string @go(Fingerprint,*string)

	// an identifier for the resource with format locations/global/firewallPolicies/{{name}}
	firewallPolicyId?: null | string @go(FirewallPolicyID,*string)

	// an identifier for the resource with format locations/global/firewallPolicies/{{name}}
	id?: null | string @go(ID,*string)

	// Name of the resource. It is a numeric ID allocated by GCP which uniquely identifies the Firewall Policy.
	name?: null | string @go(Name,*string)

	// The parent of the firewall policy.
	parent?: null | string @go(Parent,*string)

	// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
	ruleTupleCount?: null | float64 @go(RuleTupleCount,*float64)

	// Server-defined URL for the resource.
	selfLink?: null | string @go(SelfLink,*string)

	// Server-defined URL for this resource with the resource id.
	selfLinkWithId?: null | string @go(SelfLinkWithID,*string)

	// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
	shortName?: null | string @go(ShortName,*string)
}

#FirewallPolicyParameters: {
	// An optional description of this resource. Provide this property when you create the resource.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The parent of the firewall policy.
	// +kubebuilder:validation:Optional
	parent?: null | string @go(Parent,*string)

	// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
	// +kubebuilder:validation:Optional
	shortName?: null | string @go(ShortName,*string)
}

// FirewallPolicySpec defines the desired state of FirewallPolicy
#FirewallPolicySpec: {
	forProvider: #FirewallPolicyParameters @go(ForProvider)

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
	initProvider?: #FirewallPolicyInitParameters @go(InitProvider)
}

// FirewallPolicyStatus defines the observed state of FirewallPolicy.
#FirewallPolicyStatus: {
	atProvider?: #FirewallPolicyObservation @go(AtProvider)
}

// FirewallPolicy is the Schema for the FirewallPolicys API. Creates a hierarchical firewall policy
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#FirewallPolicy: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.parent) || (has(self.initProvider) && has(self.initProvider.parent))",message="spec.forProvider.parent is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.shortName) || (has(self.initProvider) && has(self.initProvider.shortName))",message="spec.forProvider.shortName is a required parameter"
	spec:    #FirewallPolicySpec   @go(Spec)
	status?: #FirewallPolicyStatus @go(Status)
}

// FirewallPolicyList contains a list of FirewallPolicys
#FirewallPolicyList: {
	items: [...#FirewallPolicy] @go(Items,[]FirewallPolicy)
}
