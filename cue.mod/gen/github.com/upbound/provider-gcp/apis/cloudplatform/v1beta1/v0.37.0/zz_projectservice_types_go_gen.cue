// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1

package v1beta1

#ProjectServiceInitParameters: {
	// If true, services that are enabled
	// and which depend on this service should also be disabled when this service is
	// destroyed. If false or unset, an error will be generated if any enabled
	// services depend on this service when destroying it.
	disableDependentServices?: null | bool @go(DisableDependentServices,*bool)

	// Defaults to true. May be useful in the event
	// that a project is long-lived but the infrastructure running in that project
	// changes frequently.
	disableOnDestroy?: null | bool @go(DisableOnDestroy,*bool)

	// The service to enable.
	service?: null | string @go(Service,*string)
}

#ProjectServiceObservation: {
	// If true, services that are enabled
	// and which depend on this service should also be disabled when this service is
	// destroyed. If false or unset, an error will be generated if any enabled
	// services depend on this service when destroying it.
	disableDependentServices?: null | bool @go(DisableDependentServices,*bool)

	// Defaults to true. May be useful in the event
	// that a project is long-lived but the infrastructure running in that project
	// changes frequently.
	disableOnDestroy?: null | bool @go(DisableOnDestroy,*bool)

	// an identifier for the resource with format {{project}}/{{service}}
	id?: null | string @go(ID,*string)

	// The project ID. If not provided, the provider project
	// is used.
	project?: null | string @go(Project,*string)

	// The service to enable.
	service?: null | string @go(Service,*string)
}

#ProjectServiceParameters: {
	// If true, services that are enabled
	// and which depend on this service should also be disabled when this service is
	// destroyed. If false or unset, an error will be generated if any enabled
	// services depend on this service when destroying it.
	// +kubebuilder:validation:Optional
	disableDependentServices?: null | bool @go(DisableDependentServices,*bool)

	// Defaults to true. May be useful in the event
	// that a project is long-lived but the infrastructure running in that project
	// changes frequently.
	// +kubebuilder:validation:Optional
	disableOnDestroy?: null | bool @go(DisableOnDestroy,*bool)

	// The project ID. If not provided, the provider project
	// is used.
	// +crossplane:generate:reference:type=Project
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The service to enable.
	// +kubebuilder:validation:Optional
	service?: null | string @go(Service,*string)
}

// ProjectServiceSpec defines the desired state of ProjectService
#ProjectServiceSpec: {
	forProvider: #ProjectServiceParameters @go(ForProvider)

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
	initProvider?: #ProjectServiceInitParameters @go(InitProvider)
}

// ProjectServiceStatus defines the observed state of ProjectService.
#ProjectServiceStatus: {
	atProvider?: #ProjectServiceObservation @go(AtProvider)
}

// ProjectService is the Schema for the ProjectServices API. Allows management of a single API service for a Google Cloud Platform project.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ProjectService: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.service) || (has(self.initProvider) && has(self.initProvider.service))",message="spec.forProvider.service is a required parameter"
	spec:    #ProjectServiceSpec   @go(Spec)
	status?: #ProjectServiceStatus @go(Status)
}

// ProjectServiceList contains a list of ProjectServices
#ProjectServiceList: {
	items: [...#ProjectService] @go(Items,[]ProjectService)
}
