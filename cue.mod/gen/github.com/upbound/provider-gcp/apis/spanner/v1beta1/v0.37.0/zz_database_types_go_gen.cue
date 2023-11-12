// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/spanner/v1beta1

package v1beta1

#DatabaseInitParameters: {
	// The dialect of the Cloud Spanner Database.
	// If it is not provided, "GOOGLE_STANDARD_SQL" will be used.
	// Possible values are: GOOGLE_STANDARD_SQL, POSTGRESQL.
	databaseDialect?: null | string @go(DatabaseDialect,*string)

	// An optional list of DDL statements to run inside the newly created
	// database. Statements can create tables, indexes, etc. These statements
	// execute atomically with the creation of the database: if there is an
	// error in any statement, the database is not created.
	ddl?: [...null | string] @go(Ddl,[]*string)

	// Defaults to true.
	deletionProtection?: null | bool @go(DeletionProtection,*bool)

	// Whether drop protection is enabled for this database. Defaults to false.
	// whereas setting “enableDropProtection” to true protects the database from deletions in all interfaces.
	// (2) Setting "enableDropProtection" to true also prevents the deletion of the parent instance containing the database.
	// "deletion_protection" attribute does not provide protection against the deletion of the parent instance.
	enableDropProtection?: null | bool @go(EnableDropProtection,*bool)

	// Encryption configuration for the database
	// Structure is documented below.
	encryptionConfig?: [...#EncryptionConfigInitParameters] @go(EncryptionConfig,[]EncryptionConfigInitParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The retention period for the database. The retention period must be between 1 hour
	// and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
	// the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
	// If this property is used, you must avoid adding new DDL statements to ddl that
	// update the database's version_retention_period.
	versionRetentionPeriod?: null | string @go(VersionRetentionPeriod,*string)
}

#DatabaseObservation: {
	// The dialect of the Cloud Spanner Database.
	// If it is not provided, "GOOGLE_STANDARD_SQL" will be used.
	// Possible values are: GOOGLE_STANDARD_SQL, POSTGRESQL.
	databaseDialect?: null | string @go(DatabaseDialect,*string)

	// An optional list of DDL statements to run inside the newly created
	// database. Statements can create tables, indexes, etc. These statements
	// execute atomically with the creation of the database: if there is an
	// error in any statement, the database is not created.
	ddl?: [...null | string] @go(Ddl,[]*string)

	// Defaults to true.
	deletionProtection?: null | bool @go(DeletionProtection,*bool)

	// Whether drop protection is enabled for this database. Defaults to false.
	// whereas setting “enableDropProtection” to true protects the database from deletions in all interfaces.
	// (2) Setting "enableDropProtection" to true also prevents the deletion of the parent instance containing the database.
	// "deletion_protection" attribute does not provide protection against the deletion of the parent instance.
	enableDropProtection?: null | bool @go(EnableDropProtection,*bool)

	// Encryption configuration for the database
	// Structure is documented below.
	encryptionConfig?: [...#EncryptionConfigObservation] @go(EncryptionConfig,[]EncryptionConfigObservation)

	// an identifier for the resource with format {{instance}}/{{name}}
	id?: null | string @go(ID,*string)

	// The instance to create the database on.
	instance?: null | string @go(Instance,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// An explanation of the status of the database.
	state?: null | string @go(State,*string)

	// The retention period for the database. The retention period must be between 1 hour
	// and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
	// the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
	// If this property is used, you must avoid adding new DDL statements to ddl that
	// update the database's version_retention_period.
	versionRetentionPeriod?: null | string @go(VersionRetentionPeriod,*string)
}

#DatabaseParameters: {
	// The dialect of the Cloud Spanner Database.
	// If it is not provided, "GOOGLE_STANDARD_SQL" will be used.
	// Possible values are: GOOGLE_STANDARD_SQL, POSTGRESQL.
	// +kubebuilder:validation:Optional
	databaseDialect?: null | string @go(DatabaseDialect,*string)

	// An optional list of DDL statements to run inside the newly created
	// database. Statements can create tables, indexes, etc. These statements
	// execute atomically with the creation of the database: if there is an
	// error in any statement, the database is not created.
	// +kubebuilder:validation:Optional
	ddl?: [...null | string] @go(Ddl,[]*string)

	// Defaults to true.
	// +kubebuilder:validation:Optional
	deletionProtection?: null | bool @go(DeletionProtection,*bool)

	// Whether drop protection is enabled for this database. Defaults to false.
	// whereas setting “enableDropProtection” to true protects the database from deletions in all interfaces.
	// (2) Setting "enableDropProtection" to true also prevents the deletion of the parent instance containing the database.
	// "deletion_protection" attribute does not provide protection against the deletion of the parent instance.
	// +kubebuilder:validation:Optional
	enableDropProtection?: null | bool @go(EnableDropProtection,*bool)

	// Encryption configuration for the database
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	encryptionConfig?: [...#EncryptionConfigParameters] @go(EncryptionConfig,[]EncryptionConfigParameters)

	// The instance to create the database on.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/spanner/v1beta1.Instance
	// +kubebuilder:validation:Optional
	instance?: null | string @go(Instance,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The retention period for the database. The retention period must be between 1 hour
	// and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
	// the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
	// If this property is used, you must avoid adding new DDL statements to ddl that
	// update the database's version_retention_period.
	// +kubebuilder:validation:Optional
	versionRetentionPeriod?: null | string @go(VersionRetentionPeriod,*string)
}

#EncryptionConfigInitParameters: {
	// Fully qualified name of the KMS key to use to encrypt this database. This key must exist
	// in the same location as the Spanner Database.
	kmsKeyName?: null | string @go(KMSKeyName,*string)
}

#EncryptionConfigObservation: {
	// Fully qualified name of the KMS key to use to encrypt this database. This key must exist
	// in the same location as the Spanner Database.
	kmsKeyName?: null | string @go(KMSKeyName,*string)
}

#EncryptionConfigParameters: {
	// Fully qualified name of the KMS key to use to encrypt this database. This key must exist
	// in the same location as the Spanner Database.
	// +kubebuilder:validation:Optional
	kmsKeyName?: null | string @go(KMSKeyName,*string)
}

// DatabaseSpec defines the desired state of Database
#DatabaseSpec: {
	forProvider: #DatabaseParameters @go(ForProvider)

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
	initProvider?: #DatabaseInitParameters @go(InitProvider)
}

// DatabaseStatus defines the observed state of Database.
#DatabaseStatus: {
	atProvider?: #DatabaseObservation @go(AtProvider)
}

// Database is the Schema for the Databases API. A Cloud Spanner Database which is hosted on a Spanner instance.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Database: {
	spec:    #DatabaseSpec   @go(Spec)
	status?: #DatabaseStatus @go(Status)
}

// DatabaseList contains a list of Databases
#DatabaseList: {
	items: [...#Database] @go(Items,[]Database)
}
