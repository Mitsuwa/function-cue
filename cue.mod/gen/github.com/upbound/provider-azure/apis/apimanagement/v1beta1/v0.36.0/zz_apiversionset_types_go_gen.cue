// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#APIVersionSetInitParameters: {
	// The description of API Version Set.
	description?: null | string @go(Description,*string)

	// The display name of this API Version Set.
	displayName?: null | string @go(DisplayName,*string)

	// The name of the Header which should be read from Inbound Requests which defines the API Version.
	versionHeaderName?: null | string @go(VersionHeaderName,*string)

	// The name of the Query String which should be read from Inbound Requests which defines the API Version.
	versionQueryName?: null | string @go(VersionQueryName,*string)

	// Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are Header, Query and Segment.
	versioningScheme?: null | string @go(VersioningScheme,*string)
}

#APIVersionSetObservation: {
	// The name of the API Management Service in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created.
	apiManagementName?: null | string @go(APIManagementName,*string)

	// The description of API Version Set.
	description?: null | string @go(Description,*string)

	// The display name of this API Version Set.
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the API Version Set.
	id?: null | string @go(ID,*string)

	// The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the Header which should be read from Inbound Requests which defines the API Version.
	versionHeaderName?: null | string @go(VersionHeaderName,*string)

	// The name of the Query String which should be read from Inbound Requests which defines the API Version.
	versionQueryName?: null | string @go(VersionQueryName,*string)

	// Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are Header, Query and Segment.
	versioningScheme?: null | string @go(VersioningScheme,*string)
}

#APIVersionSetParameters: {
	// The name of the API Management Service in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/apimanagement/v1beta1.Management
	// +kubebuilder:validation:Optional
	apiManagementName?: null | string @go(APIManagementName,*string)

	// The description of API Version Set.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The display name of this API Version Set.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the Header which should be read from Inbound Requests which defines the API Version.
	// +kubebuilder:validation:Optional
	versionHeaderName?: null | string @go(VersionHeaderName,*string)

	// The name of the Query String which should be read from Inbound Requests which defines the API Version.
	// +kubebuilder:validation:Optional
	versionQueryName?: null | string @go(VersionQueryName,*string)

	// Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are Header, Query and Segment.
	// +kubebuilder:validation:Optional
	versioningScheme?: null | string @go(VersioningScheme,*string)
}

// APIVersionSetSpec defines the desired state of APIVersionSet
#APIVersionSetSpec: {
	forProvider: #APIVersionSetParameters @go(ForProvider)

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
	initProvider?: #APIVersionSetInitParameters @go(InitProvider)
}

// APIVersionSetStatus defines the observed state of APIVersionSet.
#APIVersionSetStatus: {
	atProvider?: #APIVersionSetObservation @go(AtProvider)
}

// APIVersionSet is the Schema for the APIVersionSets API. Manages an API Version Set within an API Management Service.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#APIVersionSet: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || has(self.initProvider.displayName)",message="displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.versioningScheme) || has(self.initProvider.versioningScheme)",message="versioningScheme is a required parameter"
	spec:    #APIVersionSetSpec   @go(Spec)
	status?: #APIVersionSetStatus @go(Status)
}

// APIVersionSetList contains a list of APIVersionSets
#APIVersionSetList: {
	items: [...#APIVersionSet] @go(Items,[]APIVersionSet)
}
