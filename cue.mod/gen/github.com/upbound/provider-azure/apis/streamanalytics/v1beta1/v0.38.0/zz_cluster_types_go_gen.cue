// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/streamanalytics/v1beta1

package v1beta1

#ClusterInitParameters: {
	// The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The number of streaming units supported by the Cluster. Accepted values are multiples of 36 in the range of 36 to 216.
	streamingCapacity?: null | float64 @go(StreamingCapacity,*float64)

	// A mapping of tags which should be assigned to the Stream Analytics.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ClusterObservation: {
	// The ID of the Stream Analytics.
	id?: null | string @go(ID,*string)

	// The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The number of streaming units supported by the Cluster. Accepted values are multiples of 36 in the range of 36 to 216.
	streamingCapacity?: null | float64 @go(StreamingCapacity,*float64)

	// A mapping of tags which should be assigned to the Stream Analytics.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ClusterParameters: {
	// The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The number of streaming units supported by the Cluster. Accepted values are multiples of 36 in the range of 36 to 216.
	// +kubebuilder:validation:Optional
	streamingCapacity?: null | float64 @go(StreamingCapacity,*float64)

	// A mapping of tags which should be assigned to the Stream Analytics.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// ClusterSpec defines the desired state of Cluster
#ClusterSpec: {
	forProvider: #ClusterParameters @go(ForProvider)

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
	initProvider?: #ClusterInitParameters @go(InitProvider)
}

// ClusterStatus defines the observed state of Cluster.
#ClusterStatus: {
	atProvider?: #ClusterObservation @go(AtProvider)
}

// Cluster is the Schema for the Clusters API. Manages a Stream Analytics Cluster.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Cluster: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.streamingCapacity) || (has(self.initProvider) && has(self.initProvider.streamingCapacity))",message="spec.forProvider.streamingCapacity is a required parameter"
	spec:    #ClusterSpec   @go(Spec)
	status?: #ClusterStatus @go(Status)
}

// ClusterList contains a list of Clusters
#ClusterList: {
	items: [...#Cluster] @go(Items,[]Cluster)
}
