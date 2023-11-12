// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/sql/v1beta1

package v1beta1

#MSSQLServerDNSAliasInitParameters: {
}

#MSSQLServerDNSAliasObservation: {
	// The fully qualified DNS record for alias.
	dnsRecord?: null | string @go(DNSRecord,*string)

	// The ID of the MSSQL Server DNS Alias.
	id?: null | string @go(ID,*string)

	// The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created.
	mssqlServerId?: null | string @go(MSSQLServerID,*string)
}

#MSSQLServerDNSAliasParameters: {
	// The ID of the mssql server. Changing this forces a new MSSQL Server DNS Alias to be created.
	// +crossplane:generate:reference:type=MSSQLServer
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	mssqlServerId?: null | string @go(MSSQLServerID,*string)
}

// MSSQLServerDNSAliasSpec defines the desired state of MSSQLServerDNSAlias
#MSSQLServerDNSAliasSpec: {
	forProvider: #MSSQLServerDNSAliasParameters @go(ForProvider)

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
	initProvider?: #MSSQLServerDNSAliasInitParameters @go(InitProvider)
}

// MSSQLServerDNSAliasStatus defines the observed state of MSSQLServerDNSAlias.
#MSSQLServerDNSAliasStatus: {
	atProvider?: #MSSQLServerDNSAliasObservation @go(AtProvider)
}

// MSSQLServerDNSAlias is the Schema for the MSSQLServerDNSAliass API. Manages a MS SQL Server DNS Alias.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MSSQLServerDNSAlias: {
	spec:    #MSSQLServerDNSAliasSpec   @go(Spec)
	status?: #MSSQLServerDNSAliasStatus @go(Status)
}

// MSSQLServerDNSAliasList contains a list of MSSQLServerDNSAliass
#MSSQLServerDNSAliasList: {
	items: [...#MSSQLServerDNSAlias] @go(Items,[]MSSQLServerDNSAlias)
}
