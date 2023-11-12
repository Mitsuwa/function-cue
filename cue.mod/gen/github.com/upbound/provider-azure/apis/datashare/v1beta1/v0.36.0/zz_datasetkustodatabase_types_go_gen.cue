// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/datashare/v1beta1

package v1beta1

#DataSetKustoDatabaseInitParameters: {
}

#DataSetKustoDatabaseObservation: {
	// The name of the Data Share Dataset.
	displayName?: null | string @go(DisplayName,*string)

	// The resource ID of the Data Share Kusto Database Dataset.
	id?: null | string @go(ID,*string)

	// The location of the Kusto Cluster.
	kustoClusterLocation?: null | string @go(KustoClusterLocation,*string)

	// The resource ID of the Kusto Cluster Database to be shared with the receiver. Changing this forces a new Data Share Kusto Database Dataset to be created.
	kustoDatabaseId?: null | string @go(KustoDatabaseID,*string)

	// The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created. Changing this forces a new Data Share Kusto Database Dataset to be created.
	shareId?: null | string @go(ShareID,*string)
}

#DataSetKustoDatabaseParameters: {
	// The resource ID of the Kusto Cluster Database to be shared with the receiver. Changing this forces a new Data Share Kusto Database Dataset to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/kusto/v1beta1.Database
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	kustoDatabaseId?: null | string @go(KustoDatabaseID,*string)

	// The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created. Changing this forces a new Data Share Kusto Database Dataset to be created.
	// +crossplane:generate:reference:type=DataShare
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	shareId?: null | string @go(ShareID,*string)
}

// DataSetKustoDatabaseSpec defines the desired state of DataSetKustoDatabase
#DataSetKustoDatabaseSpec: {
	forProvider: #DataSetKustoDatabaseParameters @go(ForProvider)

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
	initProvider?: #DataSetKustoDatabaseInitParameters @go(InitProvider)
}

// DataSetKustoDatabaseStatus defines the observed state of DataSetKustoDatabase.
#DataSetKustoDatabaseStatus: {
	atProvider?: #DataSetKustoDatabaseObservation @go(AtProvider)
}

// DataSetKustoDatabase is the Schema for the DataSetKustoDatabases API. Manages a Data Share Kusto Database Dataset.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#DataSetKustoDatabase: {
	spec:    #DataSetKustoDatabaseSpec   @go(Spec)
	status?: #DataSetKustoDatabaseStatus @go(Status)
}

// DataSetKustoDatabaseList contains a list of DataSetKustoDatabases
#DataSetKustoDatabaseList: {
	items: [...#DataSetKustoDatabase] @go(Items,[]DataSetKustoDatabase)
}
