// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/sql/v1beta1

package v1beta1

#MSSQLJobAgentObservation: {
	// The ID of the database to store metadata for the Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
	databaseId?: null | string @go(DatabaseID,*string)

	// The ID of the Elastic Job Agent.
	id?: null | string @go(ID,*string)

	// The Azure Region where the Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created.
	location?: null | string @go(Location,*string)

	// The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
	name?: null | string @go(Name,*string)

	// A mapping of tags which should be assigned to the Database.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MSSQLJobAgentParameters: {
	// The ID of the database to store metadata for the Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/sql/v1beta1.MSSQLDatabase
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	databaseId?: null | string @go(DatabaseID,*string)

	// The Azure Region where the Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// A mapping of tags which should be assigned to the Database.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// MSSQLJobAgentSpec defines the desired state of MSSQLJobAgent
#MSSQLJobAgentSpec: {
	forProvider: #MSSQLJobAgentParameters @go(ForProvider)
}

// MSSQLJobAgentStatus defines the observed state of MSSQLJobAgent.
#MSSQLJobAgentStatus: {
	atProvider?: #MSSQLJobAgentObservation @go(AtProvider)
}

// MSSQLJobAgent is the Schema for the MSSQLJobAgents API. Manages an Elastic Job Agent.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MSSQLJobAgent: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	spec:    #MSSQLJobAgentSpec   @go(Spec)
	status?: #MSSQLJobAgentStatus @go(Status)
}

// MSSQLJobAgentList contains a list of MSSQLJobAgents
#MSSQLJobAgentList: {
	items: [...#MSSQLJobAgent] @go(Items,[]MSSQLJobAgent)
}
