// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#NetworkPeeringRoutesConfigObservation: {
	// Whether to export the custom routes to the peer network.
	exportCustomRoutes?: null | bool @go(ExportCustomRoutes,*bool)

	// an identifier for the resource with format projects/{{project}}/global/networks/{{network}}/networkPeerings/{{peering}}
	id?: null | string @go(ID,*string)

	// Whether to import the custom routes to the peer network.
	importCustomRoutes?: null | bool @go(ImportCustomRoutes,*bool)

	// The name of the primary network for the peering.
	network?: null | string @go(Network,*string)

	// Name of the peering.
	peering?: null | string @go(Peering,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#NetworkPeeringRoutesConfigParameters: {
	// Whether to export the custom routes to the peer network.
	// +kubebuilder:validation:Optional
	exportCustomRoutes?: null | bool @go(ExportCustomRoutes,*bool)

	// Whether to import the custom routes to the peer network.
	// +kubebuilder:validation:Optional
	importCustomRoutes?: null | bool @go(ImportCustomRoutes,*bool)

	// The name of the primary network for the peering.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Network
	// +kubebuilder:validation:Optional
	network?: null | string @go(Network,*string)

	// Name of the peering.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.NetworkPeering
	// +kubebuilder:validation:Optional
	peering?: null | string @go(Peering,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

// NetworkPeeringRoutesConfigSpec defines the desired state of NetworkPeeringRoutesConfig
#NetworkPeeringRoutesConfigSpec: {
	forProvider: #NetworkPeeringRoutesConfigParameters @go(ForProvider)
}

// NetworkPeeringRoutesConfigStatus defines the observed state of NetworkPeeringRoutesConfig.
#NetworkPeeringRoutesConfigStatus: {
	atProvider?: #NetworkPeeringRoutesConfigObservation @go(AtProvider)
}

// NetworkPeeringRoutesConfig is the Schema for the NetworkPeeringRoutesConfigs API. Manage a network peering's route settings without managing the peering as a whole.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#NetworkPeeringRoutesConfig: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.exportCustomRoutes)",message="exportCustomRoutes is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.importCustomRoutes)",message="importCustomRoutes is a required parameter"
	spec:    #NetworkPeeringRoutesConfigSpec   @go(Spec)
	status?: #NetworkPeeringRoutesConfigStatus @go(Status)
}

// NetworkPeeringRoutesConfigList contains a list of NetworkPeeringRoutesConfigs
#NetworkPeeringRoutesConfigList: {
	items: [...#NetworkPeeringRoutesConfig] @go(Items,[]NetworkPeeringRoutesConfig)
}
