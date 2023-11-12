// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/cloudplatform/v1beta1

package v1beta1

#ServiceNetworkingPeeredDNSDomainInitParameters: {
	// The DNS domain suffix of the peered DNS domain. Make sure to suffix with a . (dot).
	dnsSuffix?: null | string @go(DNSSuffix,*string)

	// The producer project number. If not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#ServiceNetworkingPeeredDNSDomainObservation: {
	// The DNS domain suffix of the peered DNS domain. Make sure to suffix with a . (dot).
	dnsSuffix?: null | string @go(DNSSuffix,*string)

	// an identifier for the resource with format services/{{service}}/projects/{{project}}/global/networks/{{network}}/peeredDnsDomains/{{name}}
	id?: null | string @go(ID,*string)

	// The network in the consumer project.
	network?: null | string @go(Network,*string)

	// an identifier for the resource with format services/{{service}}/projects/{{project}}/global/networks/{{network}}
	parent?: null | string @go(Parent,*string)

	// The producer project number. If not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Private service connection between service and consumer network, defaults to servicenetworking.googleapis.com
	service?: null | string @go(Service,*string)
}

#ServiceNetworkingPeeredDNSDomainParameters: {
	// The DNS domain suffix of the peered DNS domain. Make sure to suffix with a . (dot).
	// +kubebuilder:validation:Optional
	dnsSuffix?: null | string @go(DNSSuffix,*string)

	// The network in the consumer project.
	// +kubebuilder:validation:Required
	network?: null | string @go(Network,*string)

	// The producer project number. If not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// Private service connection between service and consumer network, defaults to servicenetworking.googleapis.com
	// +kubebuilder:validation:Required
	service?: null | string @go(Service,*string)
}

// ServiceNetworkingPeeredDNSDomainSpec defines the desired state of ServiceNetworkingPeeredDNSDomain
#ServiceNetworkingPeeredDNSDomainSpec: {
	forProvider: #ServiceNetworkingPeeredDNSDomainParameters @go(ForProvider)

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
	initProvider?: #ServiceNetworkingPeeredDNSDomainInitParameters @go(InitProvider)
}

// ServiceNetworkingPeeredDNSDomainStatus defines the observed state of ServiceNetworkingPeeredDNSDomain.
#ServiceNetworkingPeeredDNSDomainStatus: {
	atProvider?: #ServiceNetworkingPeeredDNSDomainObservation @go(AtProvider)
}

// ServiceNetworkingPeeredDNSDomain is the Schema for the ServiceNetworkingPeeredDNSDomains API. Allows management of a single peered DNS domain on a project.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ServiceNetworkingPeeredDNSDomain: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.dnsSuffix) || (has(self.initProvider) && has(self.initProvider.dnsSuffix))",message="spec.forProvider.dnsSuffix is a required parameter"
	spec:    #ServiceNetworkingPeeredDNSDomainSpec   @go(Spec)
	status?: #ServiceNetworkingPeeredDNSDomainStatus @go(Status)
}

// ServiceNetworkingPeeredDNSDomainList contains a list of ServiceNetworkingPeeredDNSDomains
#ServiceNetworkingPeeredDNSDomainList: {
	items: [...#ServiceNetworkingPeeredDNSDomain] @go(Items,[]ServiceNetworkingPeeredDNSDomain)
}
