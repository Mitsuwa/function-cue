// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/automation/v1beta1

package v1beta1

#ConnectionClassicCertificateInitParameters: {
	// The name of the certificate asset.
	certificateAssetName?: null | string @go(CertificateAssetName,*string)

	// A description for this Connection.
	description?: null | string @go(Description,*string)

	// The id of subscription.
	subscriptionId?: null | string @go(SubscriptionID,*string)

	// The name of subscription.
	subscriptionName?: null | string @go(SubscriptionName,*string)
}

#ConnectionClassicCertificateObservation: {
	// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
	automationAccountName?: null | string @go(AutomationAccountName,*string)

	// The name of the certificate asset.
	certificateAssetName?: null | string @go(CertificateAssetName,*string)

	// A description for this Connection.
	description?: null | string @go(Description,*string)

	// The Automation Connection ID.
	id?: null | string @go(ID,*string)

	// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The id of subscription.
	subscriptionId?: null | string @go(SubscriptionID,*string)

	// The name of subscription.
	subscriptionName?: null | string @go(SubscriptionName,*string)
}

#ConnectionClassicCertificateParameters: {
	// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/automation/v1beta1.Account
	// +kubebuilder:validation:Optional
	automationAccountName?: null | string @go(AutomationAccountName,*string)

	// The name of the certificate asset.
	// +kubebuilder:validation:Optional
	certificateAssetName?: null | string @go(CertificateAssetName,*string)

	// A description for this Connection.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The id of subscription.
	// +kubebuilder:validation:Optional
	subscriptionId?: null | string @go(SubscriptionID,*string)

	// The name of subscription.
	// +kubebuilder:validation:Optional
	subscriptionName?: null | string @go(SubscriptionName,*string)
}

// ConnectionClassicCertificateSpec defines the desired state of ConnectionClassicCertificate
#ConnectionClassicCertificateSpec: {
	forProvider: #ConnectionClassicCertificateParameters @go(ForProvider)

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
	initProvider?: #ConnectionClassicCertificateInitParameters @go(InitProvider)
}

// ConnectionClassicCertificateStatus defines the observed state of ConnectionClassicCertificate.
#ConnectionClassicCertificateStatus: {
	atProvider?: #ConnectionClassicCertificateObservation @go(AtProvider)
}

// ConnectionClassicCertificate is the Schema for the ConnectionClassicCertificates API. Manages an Automation Connection with type
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ConnectionClassicCertificate: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.certificateAssetName) || (has(self.initProvider) && has(self.initProvider.certificateAssetName))",message="spec.forProvider.certificateAssetName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.subscriptionId) || (has(self.initProvider) && has(self.initProvider.subscriptionId))",message="spec.forProvider.subscriptionId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.subscriptionName) || (has(self.initProvider) && has(self.initProvider.subscriptionName))",message="spec.forProvider.subscriptionName is a required parameter"
	spec:    #ConnectionClassicCertificateSpec   @go(Spec)
	status?: #ConnectionClassicCertificateStatus @go(Status)
}

// ConnectionClassicCertificateList contains a list of ConnectionClassicCertificates
#ConnectionClassicCertificateList: {
	items: [...#ConnectionClassicCertificate] @go(Items,[]ConnectionClassicCertificate)
}
