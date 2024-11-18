// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/dbformysql/v1beta1

package v1beta1

#DatabaseObservation: {
	// Specifies the Charset for the MySQL Database, which needs to be a valid MySQL Charset. Changing this forces a new resource to be created.
	charset?: null | string @go(Charset,*string)

	// Specifies the Collation for the MySQL Database, which needs to be a valid MySQL Collation. Changing this forces a new resource to be created.
	collation?: null | string @go(Collation,*string)

	// The ID of the MySQL Database.
	id?: null | string @go(ID,*string)

	// The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the name of the MySQL Server. Changing this forces a new resource to be created.
	serverName?: null | string @go(ServerName,*string)
}

#DatabaseParameters: {
	// Specifies the Charset for the MySQL Database, which needs to be a valid MySQL Charset. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	charset?: null | string @go(Charset,*string)

	// Specifies the Collation for the MySQL Database, which needs to be a valid MySQL Collation. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	collation?: null | string @go(Collation,*string)

	// The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the name of the MySQL Server. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/dbformysql/v1beta1.Server
	// +kubebuilder:validation:Optional
	serverName?: null | string @go(ServerName,*string)
}

// DatabaseSpec defines the desired state of Database
#DatabaseSpec: {
	forProvider: #DatabaseParameters @go(ForProvider)
}

// DatabaseStatus defines the observed state of Database.
#DatabaseStatus: {
	atProvider?: #DatabaseObservation @go(AtProvider)
}

// Database is the Schema for the Databases API. Manages a MySQL Database within a MySQL Server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Database: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.charset)",message="charset is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.collation)",message="collation is a required parameter"
	spec:    #DatabaseSpec   @go(Spec)
	status?: #DatabaseStatus @go(Status)
}

// DatabaseList contains a list of Databases
#DatabaseList: {
	items: [...#Database] @go(Items,[]Database)
}
