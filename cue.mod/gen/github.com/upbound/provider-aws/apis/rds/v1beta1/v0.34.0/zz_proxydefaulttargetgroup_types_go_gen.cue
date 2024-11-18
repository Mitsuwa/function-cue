// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/rds/v1beta1

package v1beta1

#ConnectionPoolConfigObservation: {
	// The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the proxy has opened its maximum number of connections and all connections are busy with client sessions.
	connectionBorrowTimeout?: null | float64 @go(ConnectionBorrowTimeout,*float64)

	// One or more SQL statements for the proxy to run when opening each new database connection. Typically used with SET statements to make sure that each connection has identical settings such as time zone and character set. This setting is empty by default. For multiple statements, use semicolons as the separator. You can also include multiple variables in a single SET statement, such as SET x=1, y=2.
	initQuery?: null | string @go(InitQuery,*string)

	// The maximum size of the connection pool for each target in a target group. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group.
	maxConnectionsPercent?: null | float64 @go(MaxConnectionsPercent,*float64)

	// Controls how actively the proxy closes idle database connections in the connection pool. A high value enables the proxy to leave a high percentage of idle connections open. A low value causes the proxy to close idle client connections and return the underlying database connections to the connection pool. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group.
	maxIdleConnectionsPercent?: null | float64 @go(MaxIdleConnectionsPercent,*float64)

	// Each item in the list represents a class of SQL operations that normally cause all later statements in a session using a proxy to be pinned to the same underlying database connection. Including an item in the list exempts that class of SQL operations from the pinning behavior. Currently, the only allowed value is EXCLUDE_VARIABLE_SETS.
	sessionPinningFilters?: [...null | string] @go(SessionPinningFilters,[]*string)
}

#ConnectionPoolConfigParameters: {
	// The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the proxy has opened its maximum number of connections and all connections are busy with client sessions.
	// +kubebuilder:validation:Optional
	connectionBorrowTimeout?: null | float64 @go(ConnectionBorrowTimeout,*float64)

	// One or more SQL statements for the proxy to run when opening each new database connection. Typically used with SET statements to make sure that each connection has identical settings such as time zone and character set. This setting is empty by default. For multiple statements, use semicolons as the separator. You can also include multiple variables in a single SET statement, such as SET x=1, y=2.
	// +kubebuilder:validation:Optional
	initQuery?: null | string @go(InitQuery,*string)

	// The maximum size of the connection pool for each target in a target group. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group.
	// +kubebuilder:validation:Optional
	maxConnectionsPercent?: null | float64 @go(MaxConnectionsPercent,*float64)

	// Controls how actively the proxy closes idle database connections in the connection pool. A high value enables the proxy to leave a high percentage of idle connections open. A low value causes the proxy to close idle client connections and return the underlying database connections to the connection pool. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group.
	// +kubebuilder:validation:Optional
	maxIdleConnectionsPercent?: null | float64 @go(MaxIdleConnectionsPercent,*float64)

	// Each item in the list represents a class of SQL operations that normally cause all later statements in a session using a proxy to be pinned to the same underlying database connection. Including an item in the list exempts that class of SQL operations from the pinning behavior. Currently, the only allowed value is EXCLUDE_VARIABLE_SETS.
	// +kubebuilder:validation:Optional
	sessionPinningFilters?: [...null | string] @go(SessionPinningFilters,[]*string)
}

#ProxyDefaultTargetGroupObservation: {
	// The Amazon Resource Name (ARN) representing the target group.
	arn?: null | string @go(Arn,*string)

	// The settings that determine the size and behavior of the connection pool for the target group.
	connectionPoolConfig?: [...#ConnectionPoolConfigObservation] @go(ConnectionPoolConfig,[]ConnectionPoolConfigObservation)

	// Name of the RDS DB Proxy.
	dbProxyName?: null | string @go(DBProxyName,*string)

	// Name of the RDS DB Proxy.
	id?: null | string @go(ID,*string)

	// The name of the default target group.
	name?: null | string @go(Name,*string)
}

#ProxyDefaultTargetGroupParameters: {
	// The settings that determine the size and behavior of the connection pool for the target group.
	// +kubebuilder:validation:Optional
	connectionPoolConfig?: [...#ConnectionPoolConfigParameters] @go(ConnectionPoolConfig,[]ConnectionPoolConfigParameters)

	// Name of the RDS DB Proxy.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/rds/v1beta1.Proxy
	// +kubebuilder:validation:Optional
	dbProxyName?: null | string @go(DBProxyName,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// ProxyDefaultTargetGroupSpec defines the desired state of ProxyDefaultTargetGroup
#ProxyDefaultTargetGroupSpec: {
	forProvider: #ProxyDefaultTargetGroupParameters @go(ForProvider)
}

// ProxyDefaultTargetGroupStatus defines the observed state of ProxyDefaultTargetGroup.
#ProxyDefaultTargetGroupStatus: {
	atProvider?: #ProxyDefaultTargetGroupObservation @go(AtProvider)
}

// ProxyDefaultTargetGroup is the Schema for the ProxyDefaultTargetGroups API. Manage an RDS DB proxy default target group resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ProxyDefaultTargetGroup: {
	spec:    #ProxyDefaultTargetGroupSpec   @go(Spec)
	status?: #ProxyDefaultTargetGroupStatus @go(Status)
}

// ProxyDefaultTargetGroupList contains a list of ProxyDefaultTargetGroups
#ProxyDefaultTargetGroupList: {
	items: [...#ProxyDefaultTargetGroup] @go(Items,[]ProxyDefaultTargetGroup)
}
