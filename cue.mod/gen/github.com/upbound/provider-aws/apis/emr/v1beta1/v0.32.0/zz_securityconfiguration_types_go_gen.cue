// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/emr/v1beta1

package v1beta1

#SecurityConfigurationObservation: {
	// Date the Security Configuration was created
	creationDate?: null | string @go(CreationDate,*string)

	// The ID of the EMR Security Configuration (Same as the name)
	id?: null | string @go(ID,*string)
}

#SecurityConfigurationParameters: {
	// A JSON formatted Security Configuration
	// +kubebuilder:validation:Required
	configuration?: null | string @go(Configuration,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// SecurityConfigurationSpec defines the desired state of SecurityConfiguration
#SecurityConfigurationSpec: {
	forProvider: #SecurityConfigurationParameters @go(ForProvider)
}

// SecurityConfigurationStatus defines the observed state of SecurityConfiguration.
#SecurityConfigurationStatus: {
	atProvider?: #SecurityConfigurationObservation @go(AtProvider)
}

// SecurityConfiguration is the Schema for the SecurityConfigurations API. Provides a resource to manage AWS EMR Security Configurations
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#SecurityConfiguration: {
	spec:    #SecurityConfigurationSpec   @go(Spec)
	status?: #SecurityConfigurationStatus @go(Status)
}

// SecurityConfigurationList contains a list of SecurityConfigurations
#SecurityConfigurationList: {
	items: [...#SecurityConfiguration] @go(Items,[]SecurityConfiguration)
}
