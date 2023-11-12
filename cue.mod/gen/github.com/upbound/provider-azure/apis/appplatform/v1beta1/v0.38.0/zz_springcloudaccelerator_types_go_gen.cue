// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/appplatform/v1beta1

package v1beta1

#SpringCloudAcceleratorInitParameters: {
	// The name which should be used for this Spring Cloud Accelerator. Changing this forces a new Spring Cloud Accelerator to be created. The only possible value is default.
	name?: null | string @go(Name,*string)
}

#SpringCloudAcceleratorObservation: {
	// The ID of the Spring Cloud Accelerator.
	id?: null | string @go(ID,*string)

	// The name which should be used for this Spring Cloud Accelerator. Changing this forces a new Spring Cloud Accelerator to be created. The only possible value is default.
	name?: null | string @go(Name,*string)

	// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Accelerator to be created.
	springCloudServiceId?: null | string @go(SpringCloudServiceID,*string)
}

#SpringCloudAcceleratorParameters: {
	// The name which should be used for this Spring Cloud Accelerator. Changing this forces a new Spring Cloud Accelerator to be created. The only possible value is default.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Accelerator to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/appplatform/v1beta1.SpringCloudService
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	springCloudServiceId?: null | string @go(SpringCloudServiceID,*string)
}

// SpringCloudAcceleratorSpec defines the desired state of SpringCloudAccelerator
#SpringCloudAcceleratorSpec: {
	forProvider: #SpringCloudAcceleratorParameters @go(ForProvider)

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
	initProvider?: #SpringCloudAcceleratorInitParameters @go(InitProvider)
}

// SpringCloudAcceleratorStatus defines the observed state of SpringCloudAccelerator.
#SpringCloudAcceleratorStatus: {
	atProvider?: #SpringCloudAcceleratorObservation @go(AtProvider)
}

// SpringCloudAccelerator is the Schema for the SpringCloudAccelerators API. Manages a Spring Cloud Accelerator.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SpringCloudAccelerator: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	spec:    #SpringCloudAcceleratorSpec   @go(Spec)
	status?: #SpringCloudAcceleratorStatus @go(Status)
}

// SpringCloudAcceleratorList contains a list of SpringCloudAccelerators
#SpringCloudAcceleratorList: {
	items: [...#SpringCloudAccelerator] @go(Items,[]SpringCloudAccelerator)
}
