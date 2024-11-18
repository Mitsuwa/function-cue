// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/apimanagement/v1beta1

package v1beta1

#APISchemaInitParameters: {
	// Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only.
	components?: null | string @go(Components,*string)

	// The content type of the API Schema.
	contentType?: null | string @go(ContentType,*string)

	// Types definitions. Used for Swagger/OpenAPI v1 schemas only.
	definitions?: null | string @go(Definitions,*string)

	// The JSON escaped string defining the document representing the Schema.
	value?: null | string @go(Value,*string)
}

#APISchemaObservation: {
	// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
	apiManagementName?: null | string @go(APIManagementName,*string)

	// The name of the API within the API Management Service where this API Schema should be created. Changing this forces a new resource to be created.
	apiName?: null | string @go(APIName,*string)

	// Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only.
	components?: null | string @go(Components,*string)

	// The content type of the API Schema.
	contentType?: null | string @go(ContentType,*string)

	// Types definitions. Used for Swagger/OpenAPI v1 schemas only.
	definitions?: null | string @go(Definitions,*string)

	// The ID of the API Management API Schema.
	id?: null | string @go(ID,*string)

	// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The JSON escaped string defining the document representing the Schema.
	value?: null | string @go(Value,*string)
}

#APISchemaParameters: {
	// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Management
	// +kubebuilder:validation:Optional
	apiManagementName?: null | string @go(APIManagementName,*string)

	// The name of the API within the API Management Service where this API Schema should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=API
	// +kubebuilder:validation:Optional
	apiName?: null | string @go(APIName,*string)

	// Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only.
	// +kubebuilder:validation:Optional
	components?: null | string @go(Components,*string)

	// The content type of the API Schema.
	// +kubebuilder:validation:Optional
	contentType?: null | string @go(ContentType,*string)

	// Types definitions. Used for Swagger/OpenAPI v1 schemas only.
	// +kubebuilder:validation:Optional
	definitions?: null | string @go(Definitions,*string)

	// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The JSON escaped string defining the document representing the Schema.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

// APISchemaSpec defines the desired state of APISchema
#APISchemaSpec: {
	forProvider: #APISchemaParameters @go(ForProvider)

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
	initProvider?: #APISchemaInitParameters @go(InitProvider)
}

// APISchemaStatus defines the observed state of APISchema.
#APISchemaStatus: {
	atProvider?: #APISchemaObservation @go(AtProvider)
}

// APISchema is the Schema for the APISchemas API. Manages an API Schema within an API Management Service.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#APISchema: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.contentType) || (has(self.initProvider) && has(self.initProvider.contentType))",message="spec.forProvider.contentType is a required parameter"
	spec:    #APISchemaSpec   @go(Spec)
	status?: #APISchemaStatus @go(Status)
}

// APISchemaList contains a list of APISchemas
#APISchemaList: {
	items: [...#APISchema] @go(Items,[]APISchema)
}
