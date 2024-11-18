// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/sql/v1beta1

package v1beta1

#DatabaseInitParameters: {
	// The charset value. See MySQL's
	// Supported Character Sets and Collations
	// and Postgres' Character Set Support
	// for more details and supported values. Postgres databases only support
	// a value of UTF8 at creation time.
	charset?: null | string @go(Charset,*string)

	// The collation value. See MySQL's
	// Supported Character Sets and Collations
	// and Postgres' Collation Support
	// for more details and supported values. Postgres databases only support
	// a value of en_US.UTF8 at creation time.
	collation?: null | string @go(Collation,*string)

	// The deletion policy for the database. Setting ABANDON allows the resource
	// to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be
	// deleted from the API if there are users other than cloudsqlsuperuser with access. Possible
	// values are: "ABANDON", "DELETE". Defaults to "DELETE".
	deletionPolicy?: null | string @go(DeletionPolicy,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#DatabaseObservation: {
	// The charset value. See MySQL's
	// Supported Character Sets and Collations
	// and Postgres' Character Set Support
	// for more details and supported values. Postgres databases only support
	// a value of UTF8 at creation time.
	charset?: null | string @go(Charset,*string)

	// The collation value. See MySQL's
	// Supported Character Sets and Collations
	// and Postgres' Collation Support
	// for more details and supported values. Postgres databases only support
	// a value of en_US.UTF8 at creation time.
	collation?: null | string @go(Collation,*string)

	// The deletion policy for the database. Setting ABANDON allows the resource
	// to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be
	// deleted from the API if there are users other than cloudsqlsuperuser with access. Possible
	// values are: "ABANDON", "DELETE". Defaults to "DELETE".
	deletionPolicy?: null | string @go(DeletionPolicy,*string)

	// an identifier for the resource with format projects/{{project}}/instances/{{instance}}/databases/{{name}}
	id?: null | string @go(ID,*string)

	// The name of the Cloud SQL instance. This does not include the project
	// ID.
	instance?: null | string @go(Instance,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)
}

#DatabaseParameters: {
	// The charset value. See MySQL's
	// Supported Character Sets and Collations
	// and Postgres' Character Set Support
	// for more details and supported values. Postgres databases only support
	// a value of UTF8 at creation time.
	// +kubebuilder:validation:Optional
	charset?: null | string @go(Charset,*string)

	// The collation value. See MySQL's
	// Supported Character Sets and Collations
	// and Postgres' Collation Support
	// for more details and supported values. Postgres databases only support
	// a value of en_US.UTF8 at creation time.
	// +kubebuilder:validation:Optional
	collation?: null | string @go(Collation,*string)

	// The deletion policy for the database. Setting ABANDON allows the resource
	// to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be
	// deleted from the API if there are users other than cloudsqlsuperuser with access. Possible
	// values are: "ABANDON", "DELETE". Defaults to "DELETE".
	// +kubebuilder:validation:Optional
	deletionPolicy?: null | string @go(DeletionPolicy,*string)

	// The name of the Cloud SQL instance. This does not include the project
	// ID.
	// +crossplane:generate:reference:type=DatabaseInstance
	// +kubebuilder:validation:Optional
	instance?: null | string @go(Instance,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

// DatabaseSpec defines the desired state of Database
#DatabaseSpec: {
	forProvider: #DatabaseParameters @go(ForProvider)

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
	initProvider?: #DatabaseInitParameters @go(InitProvider)
}

// DatabaseStatus defines the observed state of Database.
#DatabaseStatus: {
	atProvider?: #DatabaseObservation @go(AtProvider)
}

// Database is the Schema for the Databases API. Represents a SQL database inside the Cloud SQL instance, hosted in Google's cloud.
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
