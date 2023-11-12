// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#PrivateEndpointApplicationSecurityGroupAssociationInitParameters: {
}

#PrivateEndpointApplicationSecurityGroupAssociationObservation: {
	// The id of application security group to associate. Changing this forces a new resource to be created.
	applicationSecurityGroupId?: null | string @go(ApplicationSecurityGroupID,*string)
	id?:                         null | string @go(ID,*string)

	// The id of private endpoint to associate. Changing this forces a new resource to be created.
	privateEndpointId?: null | string @go(PrivateEndpointID,*string)
}

#PrivateEndpointApplicationSecurityGroupAssociationParameters: {
	// The id of application security group to associate. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.ApplicationSecurityGroup
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	applicationSecurityGroupId?: null | string @go(ApplicationSecurityGroupID,*string)

	// The id of private endpoint to associate. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.PrivateEndpoint
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	privateEndpointId?: null | string @go(PrivateEndpointID,*string)
}

// PrivateEndpointApplicationSecurityGroupAssociationSpec defines the desired state of PrivateEndpointApplicationSecurityGroupAssociation
#PrivateEndpointApplicationSecurityGroupAssociationSpec: {
	forProvider: #PrivateEndpointApplicationSecurityGroupAssociationParameters @go(ForProvider)

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
	initProvider?: #PrivateEndpointApplicationSecurityGroupAssociationInitParameters @go(InitProvider)
}

// PrivateEndpointApplicationSecurityGroupAssociationStatus defines the observed state of PrivateEndpointApplicationSecurityGroupAssociation.
#PrivateEndpointApplicationSecurityGroupAssociationStatus: {
	atProvider?: #PrivateEndpointApplicationSecurityGroupAssociationObservation @go(AtProvider)
}

// PrivateEndpointApplicationSecurityGroupAssociation is the Schema for the PrivateEndpointApplicationSecurityGroupAssociations API. Manages an association between Private Endpoint and Application Security Group.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PrivateEndpointApplicationSecurityGroupAssociation: {
	spec:    #PrivateEndpointApplicationSecurityGroupAssociationSpec   @go(Spec)
	status?: #PrivateEndpointApplicationSecurityGroupAssociationStatus @go(Status)
}

// PrivateEndpointApplicationSecurityGroupAssociationList contains a list of PrivateEndpointApplicationSecurityGroupAssociations
#PrivateEndpointApplicationSecurityGroupAssociationList: {
	items: [...#PrivateEndpointApplicationSecurityGroupAssociation] @go(Items,[]PrivateEndpointApplicationSecurityGroupAssociation)
}
