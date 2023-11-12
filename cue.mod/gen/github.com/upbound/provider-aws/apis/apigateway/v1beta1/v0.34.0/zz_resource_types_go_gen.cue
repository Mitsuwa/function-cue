// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/apigateway/v1beta1

package v1beta1

#ResourceObservation: {
	// Resource's identifier.
	id?: null | string @go(ID,*string)

	// ID of the parent API resource
	parentId?: null | string @go(ParentID,*string)

	// Complete path for this API resource, including all parent paths.
	path?: null | string @go(Path,*string)

	// Last path segment of this API resource.
	pathPart?: null | string @go(PathPart,*string)

	// ID of the associated REST API
	restApiId?: null | string @go(RestAPIID,*string)
}

#ResourceParameters: {
	// ID of the parent API resource
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/apigateway/v1beta1.RestAPI
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("root_resource_id",true)
	// +kubebuilder:validation:Optional
	parentId?: null | string @go(ParentID,*string)

	// Last path segment of this API resource.
	// +kubebuilder:validation:Optional
	pathPart?: null | string @go(PathPart,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// ID of the associated REST API
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/apigateway/v1beta1.RestAPI
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	restApiId?: null | string @go(RestAPIID,*string)
}

// ResourceSpec defines the desired state of Resource
#ResourceSpec: {
	forProvider: #ResourceParameters @go(ForProvider)
}

// ResourceStatus defines the observed state of Resource.
#ResourceStatus: {
	atProvider?: #ResourceObservation @go(AtProvider)
}

// Resource is the Schema for the Resources API. Provides an API Gateway Resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Resource: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.pathPart)",message="pathPart is a required parameter"
	spec:    #ResourceSpec   @go(Spec)
	status?: #ResourceStatus @go(Status)
}

// ResourceList contains a list of Resources
#ResourceList: {
	items: [...#Resource] @go(Items,[]Resource)
}
