// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/neptune/v1alpha1

package v1alpha1

// CustomDBClusterParameters contains the additional fields for DB Cluster
#CustomDBClusterParameters: {
	// The ApplyImmediately parameter only affects the NewDBClusterIdentifier and
	// MasterUserPassword values. If you set the ApplyImmediately parameter value
	// to false, then changes to the NewDBClusterIdentifier and MasterUserPassword
	// values are applied during the next maintenance window. All other changes
	// are applied immediately, regardless of the value of the ApplyImmediately
	// parameter.
	//
	// Default: false
	applyImmediately?: null | bool @go(ApplyImmediately,*bool)

	// Determines whether a final DB cluster snapshot is created before the DB cluster
	// is deleted. If true is specified, no DB cluster snapshot is created. If false
	// is specified, a DB cluster snapshot is created before the DB cluster is deleted.
	//
	// You must specify a FinalDBSnapshotIdentifier parameter if SkipFinalSnapshot
	// is false.
	//
	// Default: false
	skipFinalSnapshot?: null | bool @go(SkipFinalSnapshot,*bool)
}
