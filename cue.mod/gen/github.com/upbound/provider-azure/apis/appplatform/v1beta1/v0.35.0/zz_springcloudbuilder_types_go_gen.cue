// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/appplatform/v1beta1

package v1beta1

#BuildPackGroupInitParameters: {
	// Specifies a list of the build pack's ID.
	buildPackIds?: [...null | string] @go(BuildPackIds,[]*string)

	// The name which should be used for this build pack group.
	name?: null | string @go(Name,*string)
}

#BuildPackGroupObservation: {
	// Specifies a list of the build pack's ID.
	buildPackIds?: [...null | string] @go(BuildPackIds,[]*string)

	// The name which should be used for this build pack group.
	name?: null | string @go(Name,*string)
}

#BuildPackGroupParameters: {
	// Specifies a list of the build pack's ID.
	// +kubebuilder:validation:Optional
	buildPackIds?: [...null | string] @go(BuildPackIds,[]*string)

	// The name which should be used for this build pack group.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#SpringCloudBuilderInitParameters: {
	// One or more build_pack_group blocks as defined below.
	buildPackGroup?: [...#BuildPackGroupInitParameters] @go(BuildPackGroup,[]BuildPackGroupInitParameters)

	// The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created.
	name?: null | string @go(Name,*string)

	// A stack block as defined below.
	stack?: [...#StackInitParameters] @go(Stack,[]StackInitParameters)
}

#SpringCloudBuilderObservation: {
	// One or more build_pack_group blocks as defined below.
	buildPackGroup?: [...#BuildPackGroupObservation] @go(BuildPackGroup,[]BuildPackGroupObservation)

	// The ID of the Spring Cloud Builder.
	id?: null | string @go(ID,*string)

	// The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created.
	name?: null | string @go(Name,*string)

	// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created.
	springCloudServiceId?: null | string @go(SpringCloudServiceID,*string)

	// A stack block as defined below.
	stack?: [...#StackObservation] @go(Stack,[]StackObservation)
}

#SpringCloudBuilderParameters: {
	// One or more build_pack_group blocks as defined below.
	// +kubebuilder:validation:Optional
	buildPackGroup?: [...#BuildPackGroupParameters] @go(BuildPackGroup,[]BuildPackGroupParameters)

	// The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/appplatform/v1beta1.SpringCloudService
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	springCloudServiceId?: null | string @go(SpringCloudServiceID,*string)

	// A stack block as defined below.
	// +kubebuilder:validation:Optional
	stack?: [...#StackParameters] @go(Stack,[]StackParameters)
}

#StackInitParameters: {
	// Specifies the ID of the ClusterStack.
	id?: null | string @go(ID,*string)

	// Specifies the version of the ClusterStack
	version?: null | string @go(Version,*string)
}

#StackObservation: {
	// Specifies the ID of the ClusterStack.
	id?: null | string @go(ID,*string)

	// Specifies the version of the ClusterStack
	version?: null | string @go(Version,*string)
}

#StackParameters: {
	// Specifies the ID of the ClusterStack.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// Specifies the version of the ClusterStack
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

// SpringCloudBuilderSpec defines the desired state of SpringCloudBuilder
#SpringCloudBuilderSpec: {
	forProvider: #SpringCloudBuilderParameters @go(ForProvider)

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
	initProvider?: #SpringCloudBuilderInitParameters @go(InitProvider)
}

// SpringCloudBuilderStatus defines the observed state of SpringCloudBuilder.
#SpringCloudBuilderStatus: {
	atProvider?: #SpringCloudBuilderObservation @go(AtProvider)
}

// SpringCloudBuilder is the Schema for the SpringCloudBuilders API. Manages a Spring Cloud Builder.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SpringCloudBuilder: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.buildPackGroup) || has(self.initProvider.buildPackGroup)",message="buildPackGroup is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.stack) || has(self.initProvider.stack)",message="stack is a required parameter"
	spec:    #SpringCloudBuilderSpec   @go(Spec)
	status?: #SpringCloudBuilderStatus @go(Status)
}

// SpringCloudBuilderList contains a list of SpringCloudBuilders
#SpringCloudBuilderList: {
	items: [...#SpringCloudBuilder] @go(Items,[]SpringCloudBuilder)
}
