// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/storagecache/v1beta1

package v1beta1

#HPCCacheAccessPolicyAccessRuleInitParameters: {
	// The access level for this rule. Possible values are: rw, ro, no.
	access?: null | string @go(Access,*string)

	// The anonymous GID used when root_squash_enabled is true.
	anonymousGid?: null | float64 @go(AnonymousGID,*float64)

	// The anonymous UID used when root_squash_enabled is true.
	anonymousUid?: null | float64 @go(AnonymousUID,*float64)

	// The filter applied to the scope for this rule. The filter's format depends on its scope: default scope matches all clients and has no filter value; network scope takes a CIDR format; host takes an IP address or fully qualified domain name. If a client does not match any filter rule and there is no default rule, access is denied.
	filter?: null | string @go(Filter,*string)

	// Whether to enable root squash?
	rootSquashEnabled?: null | bool @go(RootSquashEnabled,*bool)

	// The scope of this rule. The scope and (potentially) the filter determine which clients match the rule. Possible values are: default, network, host.
	scope?: null | string @go(Scope,*string)

	// Whether allow access to subdirectories under the root export?
	submountAccessEnabled?: null | bool @go(SubmountAccessEnabled,*bool)

	// Whether SUID is allowed?
	suidEnabled?: null | bool @go(SuidEnabled,*bool)
}

#HPCCacheAccessPolicyAccessRuleObservation: {
	// The access level for this rule. Possible values are: rw, ro, no.
	access?: null | string @go(Access,*string)

	// The anonymous GID used when root_squash_enabled is true.
	anonymousGid?: null | float64 @go(AnonymousGID,*float64)

	// The anonymous UID used when root_squash_enabled is true.
	anonymousUid?: null | float64 @go(AnonymousUID,*float64)

	// The filter applied to the scope for this rule. The filter's format depends on its scope: default scope matches all clients and has no filter value; network scope takes a CIDR format; host takes an IP address or fully qualified domain name. If a client does not match any filter rule and there is no default rule, access is denied.
	filter?: null | string @go(Filter,*string)

	// Whether to enable root squash?
	rootSquashEnabled?: null | bool @go(RootSquashEnabled,*bool)

	// The scope of this rule. The scope and (potentially) the filter determine which clients match the rule. Possible values are: default, network, host.
	scope?: null | string @go(Scope,*string)

	// Whether allow access to subdirectories under the root export?
	submountAccessEnabled?: null | bool @go(SubmountAccessEnabled,*bool)

	// Whether SUID is allowed?
	suidEnabled?: null | bool @go(SuidEnabled,*bool)
}

#HPCCacheAccessPolicyAccessRuleParameters: {
	// The access level for this rule. Possible values are: rw, ro, no.
	// +kubebuilder:validation:Optional
	access?: null | string @go(Access,*string)

	// The anonymous GID used when root_squash_enabled is true.
	// +kubebuilder:validation:Optional
	anonymousGid?: null | float64 @go(AnonymousGID,*float64)

	// The anonymous UID used when root_squash_enabled is true.
	// +kubebuilder:validation:Optional
	anonymousUid?: null | float64 @go(AnonymousUID,*float64)

	// The filter applied to the scope for this rule. The filter's format depends on its scope: default scope matches all clients and has no filter value; network scope takes a CIDR format; host takes an IP address or fully qualified domain name. If a client does not match any filter rule and there is no default rule, access is denied.
	// +kubebuilder:validation:Optional
	filter?: null | string @go(Filter,*string)

	// Whether to enable root squash?
	// +kubebuilder:validation:Optional
	rootSquashEnabled?: null | bool @go(RootSquashEnabled,*bool)

	// The scope of this rule. The scope and (potentially) the filter determine which clients match the rule. Possible values are: default, network, host.
	// +kubebuilder:validation:Optional
	scope?: null | string @go(Scope,*string)

	// Whether allow access to subdirectories under the root export?
	// +kubebuilder:validation:Optional
	submountAccessEnabled?: null | bool @go(SubmountAccessEnabled,*bool)

	// Whether SUID is allowed?
	// +kubebuilder:validation:Optional
	suidEnabled?: null | bool @go(SuidEnabled,*bool)
}

#HPCCacheAccessPolicyInitParameters: {
	// Up to three access_rule blocks as defined below.
	accessRule?: [...#HPCCacheAccessPolicyAccessRuleInitParameters] @go(AccessRule,[]HPCCacheAccessPolicyAccessRuleInitParameters)
}

#HPCCacheAccessPolicyObservation: {
	// Up to three access_rule blocks as defined below.
	accessRule?: [...#HPCCacheAccessPolicyAccessRuleObservation] @go(AccessRule,[]HPCCacheAccessPolicyAccessRuleObservation)

	// The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created.
	hpcCacheId?: null | string @go(HPCCacheID,*string)

	// The ID of the HPC Cache Access Policy.
	id?: null | string @go(ID,*string)
}

#HPCCacheAccessPolicyParameters: {
	// Up to three access_rule blocks as defined below.
	// +kubebuilder:validation:Optional
	accessRule?: [...#HPCCacheAccessPolicyAccessRuleParameters] @go(AccessRule,[]HPCCacheAccessPolicyAccessRuleParameters)

	// The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storagecache/v1beta1.HPCCache
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	hpcCacheId?: null | string @go(HPCCacheID,*string)
}

// HPCCacheAccessPolicySpec defines the desired state of HPCCacheAccessPolicy
#HPCCacheAccessPolicySpec: {
	forProvider: #HPCCacheAccessPolicyParameters @go(ForProvider)

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
	initProvider?: #HPCCacheAccessPolicyInitParameters @go(InitProvider)
}

// HPCCacheAccessPolicyStatus defines the observed state of HPCCacheAccessPolicy.
#HPCCacheAccessPolicyStatus: {
	atProvider?: #HPCCacheAccessPolicyObservation @go(AtProvider)
}

// HPCCacheAccessPolicy is the Schema for the HPCCacheAccessPolicys API. Manages a HPC Cache Access Policy.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#HPCCacheAccessPolicy: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.accessRule) || (has(self.initProvider) && has(self.initProvider.accessRule))",message="spec.forProvider.accessRule is a required parameter"
	spec:    #HPCCacheAccessPolicySpec   @go(Spec)
	status?: #HPCCacheAccessPolicyStatus @go(Status)
}

// HPCCacheAccessPolicyList contains a list of HPCCacheAccessPolicys
#HPCCacheAccessPolicyList: {
	items: [...#HPCCacheAccessPolicy] @go(Items,[]HPCCacheAccessPolicy)
}
