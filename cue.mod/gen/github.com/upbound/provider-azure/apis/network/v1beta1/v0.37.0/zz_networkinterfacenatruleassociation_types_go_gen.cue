// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#NetworkInterfaceNatRuleAssociationInitParameters: {
	// The Name of the IP Configuration within the Network Interface which should be connected to the NAT Rule. Changing this forces a new resource to be created.
	ipConfigurationName?: null | string @go(IPConfigurationName,*string)
}

#NetworkInterfaceNatRuleAssociationObservation: {
	id?: null | string @go(ID,*string)

	// The Name of the IP Configuration within the Network Interface which should be connected to the NAT Rule. Changing this forces a new resource to be created.
	ipConfigurationName?: null | string @go(IPConfigurationName,*string)

	// The ID of the Load Balancer NAT Rule which this Network Interface which should be connected to. Changing this forces a new resource to be created.
	natRuleId?: null | string @go(NATRuleID,*string)

	// The ID of the Network Interface. Changing this forces a new resource to be created.
	networkInterfaceId?: null | string @go(NetworkInterfaceID,*string)
}

#NetworkInterfaceNatRuleAssociationParameters: {
	// The Name of the IP Configuration within the Network Interface which should be connected to the NAT Rule. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	ipConfigurationName?: null | string @go(IPConfigurationName,*string)

	// The ID of the Load Balancer NAT Rule which this Network Interface which should be connected to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=LoadBalancerNatRule
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	natRuleId?: null | string @go(NATRuleID,*string)

	// The ID of the Network Interface. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=NetworkInterface
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	networkInterfaceId?: null | string @go(NetworkInterfaceID,*string)
}

// NetworkInterfaceNatRuleAssociationSpec defines the desired state of NetworkInterfaceNatRuleAssociation
#NetworkInterfaceNatRuleAssociationSpec: {
	forProvider: #NetworkInterfaceNatRuleAssociationParameters @go(ForProvider)

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
	initProvider?: #NetworkInterfaceNatRuleAssociationInitParameters @go(InitProvider)
}

// NetworkInterfaceNatRuleAssociationStatus defines the observed state of NetworkInterfaceNatRuleAssociation.
#NetworkInterfaceNatRuleAssociationStatus: {
	atProvider?: #NetworkInterfaceNatRuleAssociationObservation @go(AtProvider)
}

// NetworkInterfaceNatRuleAssociation is the Schema for the NetworkInterfaceNatRuleAssociations API. Manages the association between a Network Interface and a Load Balancer's NAT Rule.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#NetworkInterfaceNatRuleAssociation: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.ipConfigurationName) || (has(self.initProvider) && has(self.initProvider.ipConfigurationName))",message="spec.forProvider.ipConfigurationName is a required parameter"
	spec:    #NetworkInterfaceNatRuleAssociationSpec   @go(Spec)
	status?: #NetworkInterfaceNatRuleAssociationStatus @go(Status)
}

// NetworkInterfaceNatRuleAssociationList contains a list of NetworkInterfaceNatRuleAssociations
#NetworkInterfaceNatRuleAssociationList: {
	items: [...#NetworkInterfaceNatRuleAssociation] @go(Items,[]NetworkInterfaceNatRuleAssociation)
}
