// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datafactory/v1beta1

package v1beta1

#LinkedServiceOdbcBasicAuthenticationObservation: {
	// The username which can be used to authenticate to the ODBC endpoint.
	username?: null | string @go(Username,*string)
}

#LinkedServiceOdbcBasicAuthenticationParameters: {
	// The username which can be used to authenticate to the ODBC endpoint.
	// +kubebuilder:validation:Required
	username?: null | string @go(Username,*string)
}

#LinkedServiceOdbcObservation: {
	// A map of additional properties to associate with the Data Factory Linked Service ODBC.
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service ODBC.
	annotations?: [...null | string] @go(Annotations,[]*string)

	// A basic_authentication block as defined below.
	basicAuthentication?: [...#LinkedServiceOdbcBasicAuthenticationObservation] @go(BasicAuthentication,[]LinkedServiceOdbcBasicAuthenticationObservation)

	// The connection string in which to authenticate with ODBC.
	connectionString?: null | string @go(ConnectionString,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service ODBC.
	description?: null | string @go(Description,*string)

	// The ID of the Data Factory ODBC Linked Service.
	id?: null | string @go(ID,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service ODBC.
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service ODBC.
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

#LinkedServiceOdbcParameters: {
	// A map of additional properties to associate with the Data Factory Linked Service ODBC.
	// +kubebuilder:validation:Optional
	additionalProperties?: {[string]: null | string} @go(AdditionalProperties,map[string]*string)

	// List of tags that can be used for describing the Data Factory Linked Service ODBC.
	// +kubebuilder:validation:Optional
	annotations?: [...null | string] @go(Annotations,[]*string)

	// A basic_authentication block as defined below.
	// +kubebuilder:validation:Optional
	basicAuthentication?: [...#LinkedServiceOdbcBasicAuthenticationParameters] @go(BasicAuthentication,[]LinkedServiceOdbcBasicAuthenticationParameters)

	// The connection string in which to authenticate with ODBC.
	// +kubebuilder:validation:Optional
	connectionString?: null | string @go(ConnectionString,*string)

	// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/datafactory/v1beta1.Factory
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dataFactoryId?: null | string @go(DataFactoryID,*string)

	// The description for the Data Factory Linked Service ODBC.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The integration runtime reference to associate with the Data Factory Linked Service ODBC.
	// +kubebuilder:validation:Optional
	integrationRuntimeName?: null | string @go(IntegrationRuntimeName,*string)

	// A map of parameters to associate with the Data Factory Linked Service ODBC.
	// +kubebuilder:validation:Optional
	parameters?: {[string]: null | string} @go(Parameters,map[string]*string)
}

// LinkedServiceOdbcSpec defines the desired state of LinkedServiceOdbc
#LinkedServiceOdbcSpec: {
	forProvider: #LinkedServiceOdbcParameters @go(ForProvider)
}

// LinkedServiceOdbcStatus defines the observed state of LinkedServiceOdbc.
#LinkedServiceOdbcStatus: {
	atProvider?: #LinkedServiceOdbcObservation @go(AtProvider)
}

// LinkedServiceOdbc is the Schema for the LinkedServiceOdbcs API. Manages a Linked Service (connection) between a Database and Azure Data Factory through ODBC protocol.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LinkedServiceOdbc: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.connectionString)",message="connectionString is a required parameter"
	spec:    #LinkedServiceOdbcSpec   @go(Spec)
	status?: #LinkedServiceOdbcStatus @go(Status)
}

// LinkedServiceOdbcList contains a list of LinkedServiceOdbcs
#LinkedServiceOdbcList: {
	items: [...#LinkedServiceOdbc] @go(Items,[]LinkedServiceOdbc)
}
