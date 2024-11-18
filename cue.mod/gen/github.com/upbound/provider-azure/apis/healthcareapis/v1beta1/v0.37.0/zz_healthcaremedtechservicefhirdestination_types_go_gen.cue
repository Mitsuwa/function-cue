// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/healthcareapis/v1beta1

package v1beta1

#HealthcareMedtechServiceFHIRDestinationInitParameters: {
	// Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination.
	destinationFhirMappingJson?: null | string @go(DestinationFHIRMappingJSON,*string)

	// Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are Create, Lookup.
	destinationIdentityResolutionType?: null | string @go(DestinationIdentityResolutionType,*string)

	// Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
	location?: null | string @go(Location,*string)
}

#HealthcareMedtechServiceFHIRDestinationObservation: {
	// Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination.
	destinationFhirMappingJson?: null | string @go(DestinationFHIRMappingJSON,*string)

	// Specifies the destination fhir service id of the Med Tech Service Fhir Destination.
	destinationFhirServiceId?: null | string @go(DestinationFHIRServiceID,*string)

	// Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are Create, Lookup.
	destinationIdentityResolutionType?: null | string @go(DestinationIdentityResolutionType,*string)

	// The ID of the Healthcare Med Tech Service Fhir Destination.
	id?: null | string @go(ID,*string)

	// Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
	location?: null | string @go(Location,*string)

	// Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
	medtechServiceId?: null | string @go(MedtechServiceID,*string)
}

#HealthcareMedtechServiceFHIRDestinationParameters: {
	// Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination.
	// +kubebuilder:validation:Optional
	destinationFhirMappingJson?: null | string @go(DestinationFHIRMappingJSON,*string)

	// Specifies the destination fhir service id of the Med Tech Service Fhir Destination.
	// +crossplane:generate:reference:type=HealthcareFHIRService
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	destinationFhirServiceId?: null | string @go(DestinationFHIRServiceID,*string)

	// Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are Create, Lookup.
	// +kubebuilder:validation:Optional
	destinationIdentityResolutionType?: null | string @go(DestinationIdentityResolutionType,*string)

	// Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
	// +crossplane:generate:reference:type=HealthcareMedtechService
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	medtechServiceId?: null | string @go(MedtechServiceID,*string)
}

// HealthcareMedtechServiceFHIRDestinationSpec defines the desired state of HealthcareMedtechServiceFHIRDestination
#HealthcareMedtechServiceFHIRDestinationSpec: {
	forProvider: #HealthcareMedtechServiceFHIRDestinationParameters @go(ForProvider)

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
	initProvider?: #HealthcareMedtechServiceFHIRDestinationInitParameters @go(InitProvider)
}

// HealthcareMedtechServiceFHIRDestinationStatus defines the observed state of HealthcareMedtechServiceFHIRDestination.
#HealthcareMedtechServiceFHIRDestinationStatus: {
	atProvider?: #HealthcareMedtechServiceFHIRDestinationObservation @go(AtProvider)
}

// HealthcareMedtechServiceFHIRDestination is the Schema for the HealthcareMedtechServiceFHIRDestinations API. Manages a Healthcare Med Tech (Internet of Medical Things) Service Fhir Destination.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#HealthcareMedtechServiceFHIRDestination: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.destinationFhirMappingJson) || (has(self.initProvider) && has(self.initProvider.destinationFhirMappingJson))",message="spec.forProvider.destinationFhirMappingJson is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.destinationIdentityResolutionType) || (has(self.initProvider) && has(self.initProvider.destinationIdentityResolutionType))",message="spec.forProvider.destinationIdentityResolutionType is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #HealthcareMedtechServiceFHIRDestinationSpec   @go(Spec)
	status?: #HealthcareMedtechServiceFHIRDestinationStatus @go(Status)
}

// HealthcareMedtechServiceFHIRDestinationList contains a list of HealthcareMedtechServiceFHIRDestinations
#HealthcareMedtechServiceFHIRDestinationList: {
	items: [...#HealthcareMedtechServiceFHIRDestination] @go(Items,[]HealthcareMedtechServiceFHIRDestination)
}
