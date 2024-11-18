// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/grafana/v1beta1

package v1beta1

#LicenseAssociationObservation: {
	// If license_type is set to ENTERPRISE_FREE_TRIAL, this is the expiration date of the free trial.
	freeTrialExpiration?: null | string @go(FreeTrialExpiration,*string)
	id?:                  null | string @go(ID,*string)

	// If license_type is set to ENTERPRISE, this is the expiration date of the enterprise license.
	licenseExpiration?: null | string @go(LicenseExpiration,*string)
}

#LicenseAssociationParameters: {
	// The type of license for the workspace license association. Valid values are ENTERPRISE and ENTERPRISE_FREE_TRIAL.
	// +kubebuilder:validation:Required
	licenseType?: null | string @go(LicenseType,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The workspace id.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/grafana/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	workspaceId?: null | string @go(WorkspaceID,*string)
}

// LicenseAssociationSpec defines the desired state of LicenseAssociation
#LicenseAssociationSpec: {
	forProvider: #LicenseAssociationParameters @go(ForProvider)
}

// LicenseAssociationStatus defines the observed state of LicenseAssociation.
#LicenseAssociationStatus: {
	atProvider?: #LicenseAssociationObservation @go(AtProvider)
}

// LicenseAssociation is the Schema for the LicenseAssociations API. Provides an Amazon Managed Grafana workspace license association resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#LicenseAssociation: {
	spec:    #LicenseAssociationSpec   @go(Spec)
	status?: #LicenseAssociationStatus @go(Status)
}

// LicenseAssociationList contains a list of LicenseAssociations
#LicenseAssociationList: {
	items: [...#LicenseAssociation] @go(Items,[]LicenseAssociation)
}
