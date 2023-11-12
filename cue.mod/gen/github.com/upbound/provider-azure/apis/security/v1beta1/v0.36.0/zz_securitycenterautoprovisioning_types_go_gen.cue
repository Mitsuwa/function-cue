// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/security/v1beta1

package v1beta1

#SecurityCenterAutoProvisioningInitParameters: {
	// Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are On (to install the security agent automatically, if it's missing) or Off (to not install the security agent automatically).
	autoProvision?: null | string @go(AutoProvision,*string)
}

#SecurityCenterAutoProvisioningObservation: {
	// Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are On (to install the security agent automatically, if it's missing) or Off (to not install the security agent automatically).
	autoProvision?: null | string @go(AutoProvision,*string)

	// The ID of the Security Center Auto Provisioning.
	id?: null | string @go(ID,*string)
}

#SecurityCenterAutoProvisioningParameters: {
	// Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are On (to install the security agent automatically, if it's missing) or Off (to not install the security agent automatically).
	// +kubebuilder:validation:Optional
	autoProvision?: null | string @go(AutoProvision,*string)
}

// SecurityCenterAutoProvisioningSpec defines the desired state of SecurityCenterAutoProvisioning
#SecurityCenterAutoProvisioningSpec: {
	forProvider: #SecurityCenterAutoProvisioningParameters @go(ForProvider)

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
	initProvider?: #SecurityCenterAutoProvisioningInitParameters @go(InitProvider)
}

// SecurityCenterAutoProvisioningStatus defines the observed state of SecurityCenterAutoProvisioning.
#SecurityCenterAutoProvisioningStatus: {
	atProvider?: #SecurityCenterAutoProvisioningObservation @go(AtProvider)
}

// SecurityCenterAutoProvisioning is the Schema for the SecurityCenterAutoProvisionings API. Manages the subscription's Security Center Auto Provisioning.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SecurityCenterAutoProvisioning: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.autoProvision) || has(self.initProvider.autoProvision)",message="autoProvision is a required parameter"
	spec:    #SecurityCenterAutoProvisioningSpec   @go(Spec)
	status?: #SecurityCenterAutoProvisioningStatus @go(Status)
}

// SecurityCenterAutoProvisioningList contains a list of SecurityCenterAutoProvisionings
#SecurityCenterAutoProvisioningList: {
	items: [...#SecurityCenterAutoProvisioning] @go(Items,[]SecurityCenterAutoProvisioning)
}
