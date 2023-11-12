// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datafactory/v1beta1

package v1beta1

#LinkedServiceMySQLObservation: {
	// A map of additional properties to associate with the Data Factory Linked Service MySQL.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service MySQL.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The connection string in which to authenticate with MySQL.
	connectionString?: null | string @go(ConnectionString,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service MySQL.
	description?: null | string @go(Description,*string)

	// The ID of the Data Factory MySQL Linked Service.
	id?: null | string @go(ID,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service MySQL.
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service MySQL.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#LinkedServiceMySQLParameters: {
	// A map of additional properties to associate with the Data Factory Linked Service MySQL.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service MySQL.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// The connection string in which to authenticate with MySQL.
	// +kubebuilder:validation:Optional
	connectionString?: null | string @go(ConnectionString,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.Factory
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service MySQL.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service MySQL.
	// +kubebuilder:validation:Optional
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service MySQL.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

// LinkedServiceMySQLSpec defines the desired state of LinkedServiceMySQL
#LinkedServiceMySQLSpec: {
	forProvider: #LinkedServiceMySQLParameters @go(ForProvider)
}

// LinkedServiceMySQLStatus defines the observed state of LinkedServiceMySQL.
#LinkedServiceMySQLStatus: {
	atProvider?: #LinkedServiceMySQLObservation @go(AtProvider)
}

// LinkedServiceMySQL is the Schema for the LinkedServiceMySQLs API. Manages a Linked Service (connection) between MySQL and Azure Data Factory.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LinkedServiceMySQL: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.connectionString)",message="connectionString is a required parameter"
	spec:    #LinkedServiceMySQLSpec   @go(Spec)
	status?: #LinkedServiceMySQLStatus @go(Status)
}

// LinkedServiceMySQLList contains a list of LinkedServiceMySQLs
#LinkedServiceMySQLList: {
	items: [...#LinkedServiceMySQL] @go(Items,[]LinkedServiceMySQL)
}
