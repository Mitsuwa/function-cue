// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/containerservice/v1beta1

package v1beta1

#HubProfileObservation: {
	dnsPrefix?:         null | string @go(DNSPrefix,*string)
	fqdn?:              null | string @go(Fqdn,*string)
	kubernetesVersion?: null | string @go(KubernetesVersion,*string)
}

#HubProfileParameters: {
	// +kubebuilder:validation:Required
	dnsPrefix?: null | string @go(DNSPrefix,*string)
}

#KubernetesFleetManagerObservation: {
	// A hub_profile block as defined below. The FleetHubProfile configures the Fleet's hub. Changing this forces a new Kubernetes Fleet Manager to be created.
	hubProfile?: [...#HubProfileObservation] @go(HubProfile,[]HubProfileObservation)

	// The ID of the Kubernetes Fleet Manager.
	id?: null | string @go(ID,*string)

	// The Azure Region where the Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
	location?: null | string @go(Location,*string)

	// Specifies the name of the Resource Group within which this Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Kubernetes Fleet Manager.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#KubernetesFleetManagerParameters: {
	// A hub_profile block as defined below. The FleetHubProfile configures the Fleet's hub. Changing this forces a new Kubernetes Fleet Manager to be created.
	// +kubebuilder:validation:Optional
	hubProfile?: [...#HubProfileParameters] @go(HubProfile,[]HubProfileParameters)

	// The Azure Region where the Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the name of the Resource Group within which this Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Kubernetes Fleet Manager.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// KubernetesFleetManagerSpec defines the desired state of KubernetesFleetManager
#KubernetesFleetManagerSpec: {
	forProvider: #KubernetesFleetManagerParameters @go(ForProvider)
}

// KubernetesFleetManagerStatus defines the observed state of KubernetesFleetManager.
#KubernetesFleetManagerStatus: {
	atProvider?: #KubernetesFleetManagerObservation @go(AtProvider)
}

// KubernetesFleetManager is the Schema for the KubernetesFleetManagers API. Manages a Kubernetes Fleet Manager.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#KubernetesFleetManager: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	spec:    #KubernetesFleetManagerSpec   @go(Spec)
	status?: #KubernetesFleetManagerStatus @go(Status)
}

// KubernetesFleetManagerList contains a list of KubernetesFleetManagers
#KubernetesFleetManagerList: {
	items: [...#KubernetesFleetManager] @go(Items,[]KubernetesFleetManager)
}
