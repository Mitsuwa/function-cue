// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/rds/v1alpha1

package v1alpha1

// GlobalClusterParameters defines the desired state of GlobalCluster
#GlobalClusterParameters: {
	// Region is which region the GlobalCluster will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The name for your database of up to 64 alphanumeric characters. If you do
	// not provide a name, Amazon Aurora will not create a database in the global
	// database cluster you are creating.
	databaseName?: null | string @go(DatabaseName,*string)

	// The deletion protection setting for the new global database. The global database
	// can't be deleted when deletion protection is enabled.
	deletionProtection?: null | bool @go(DeletionProtection,*bool)

	// The name of the database engine to be used for this DB cluster.
	engine?: null | string @go(Engine,*string)

	// The engine version of the Aurora global database.
	engineVersion?: null | string @go(EngineVersion,*string)

	// The Amazon Resource Name (ARN) to use as the primary cluster of the global
	// database. This parameter is optional.
	sourceDBClusterIdentifier?: null | string @go(SourceDBClusterIdentifier,*string)

	// The storage encryption setting for the new global database cluster.
	storageEncrypted?: null | bool @go(StorageEncrypted,*bool)
}

// GlobalClusterSpec defines the desired state of GlobalCluster
#GlobalClusterSpec: {
	forProvider: #GlobalClusterParameters @go(ForProvider)
}

// GlobalClusterObservation defines the observed state of GlobalCluster
#GlobalClusterObservation: {
	// A data object containing all properties for the current state of an in-process
	// or pending failover process for this Aurora global database. This object
	// is empty unless the FailoverGlobalCluster API operation has been called on
	// this Aurora global database (GlobalCluster).
	failoverState?: null | #FailoverState @go(FailoverState,*FailoverState)

	// The Amazon Resource Name (ARN) for the global database cluster.
	globalClusterARN?: null | string @go(GlobalClusterARN,*string)

	// Contains a user-supplied global database cluster identifier. This identifier
	// is the unique key that identifies a global database cluster.
	globalClusterIdentifier?: null | string @go(GlobalClusterIdentifier,*string)

	// The list of cluster IDs for secondary clusters within the global database
	// cluster. Currently limited to 1 item.
	globalClusterMembers?: [...null | #GlobalClusterMember] @go(GlobalClusterMembers,[]*GlobalClusterMember)

	// The Amazon Web Services Region-unique, immutable identifier for the global
	// database cluster. This identifier is found in Amazon Web Services CloudTrail
	// log entries whenever the Amazon Web Services KMS key for the DB cluster is
	// accessed.
	globalClusterResourceID?: null | string @go(GlobalClusterResourceID,*string)

	// Specifies the current state of this global database cluster.
	status?: null | string @go(Status,*string)
}

// GlobalClusterStatus defines the observed state of GlobalCluster.
#GlobalClusterStatus: {
	atProvider?: #GlobalClusterObservation @go(AtProvider)
}

// GlobalCluster is the Schema for the GlobalClusters API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#GlobalCluster: {
	spec:    #GlobalClusterSpec   @go(Spec)
	status?: #GlobalClusterStatus @go(Status)
}

// GlobalClusterList contains a list of GlobalClusters
#GlobalClusterList: {
	items: [...#GlobalCluster] @go(Items,[]GlobalCluster)
}
