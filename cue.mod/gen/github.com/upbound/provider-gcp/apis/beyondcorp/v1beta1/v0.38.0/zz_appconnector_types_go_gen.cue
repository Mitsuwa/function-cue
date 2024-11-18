// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/beyondcorp/v1beta1

package v1beta1

#AppConnectorInitParameters: {
	// An arbitrary user-provided name for the AppConnector.
	displayName?: null | string @go(DisplayName,*string)

	// Resource labels to represent user provided metadata.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Principal information about the Identity of the AppConnector.
	// Structure is documented below.
	principalInfo?: [...#PrincipalInfoInitParameters] @go(PrincipalInfo,[]PrincipalInfoInitParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#AppConnectorObservation: {
	// An arbitrary user-provided name for the AppConnector.
	displayName?: null | string @go(DisplayName,*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{region}}/appConnectors/{{name}}
	id?: null | string @go(ID,*string)

	// Resource labels to represent user provided metadata.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Principal information about the Identity of the AppConnector.
	// Structure is documented below.
	principalInfo?: [...#PrincipalInfoObservation] @go(PrincipalInfo,[]PrincipalInfoObservation)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The region of the AppConnector.
	region?: null | string @go(Region,*string)

	// Represents the different states of a AppConnector.
	state?: null | string @go(State,*string)
}

#AppConnectorParameters: {
	// An arbitrary user-provided name for the AppConnector.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Resource labels to represent user provided metadata.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Principal information about the Identity of the AppConnector.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	principalInfo?: [...#PrincipalInfoParameters] @go(PrincipalInfo,[]PrincipalInfoParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The region of the AppConnector.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

#PrincipalInfoInitParameters: {
	// ServiceAccount represents a GCP service account.
	// Structure is documented below.
	serviceAccount?: [...#ServiceAccountInitParameters] @go(ServiceAccount,[]ServiceAccountInitParameters)
}

#PrincipalInfoObservation: {
	// ServiceAccount represents a GCP service account.
	// Structure is documented below.
	serviceAccount?: [...#ServiceAccountObservation] @go(ServiceAccount,[]ServiceAccountObservation)
}

#PrincipalInfoParameters: {
	// ServiceAccount represents a GCP service account.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	serviceAccount: [...#ServiceAccountParameters] @go(ServiceAccount,[]ServiceAccountParameters)
}

#ServiceAccountInitParameters: {
}

#ServiceAccountObservation: {
	// Email address of the service account.
	email?: null | string @go(Email,*string)
}

#ServiceAccountParameters: {
	// Email address of the service account.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1.ServiceAccount
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("email",true)
	// +kubebuilder:validation:Optional
	email?: null | string @go(Email,*string)
}

// AppConnectorSpec defines the desired state of AppConnector
#AppConnectorSpec: {
	forProvider: #AppConnectorParameters @go(ForProvider)

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
	initProvider?: #AppConnectorInitParameters @go(InitProvider)
}

// AppConnectorStatus defines the observed state of AppConnector.
#AppConnectorStatus: {
	atProvider?: #AppConnectorObservation @go(AtProvider)
}

// AppConnector is the Schema for the AppConnectors API. A BeyondCorp AppConnector resource represents an application facing component deployed proximal to and with direct access to the application instances.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#AppConnector: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.principalInfo) || (has(self.initProvider) && has(self.initProvider.principalInfo))",message="spec.forProvider.principalInfo is a required parameter"
	spec:    #AppConnectorSpec   @go(Spec)
	status?: #AppConnectorStatus @go(Status)
}

// AppConnectorList contains a list of AppConnectors
#AppConnectorList: {
	items: [...#AppConnector] @go(Items,[]AppConnector)
}
