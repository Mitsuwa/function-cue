// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/accesscontextmanager/v1beta1

package v1beta1

#AccessLevelInitParameters: {
	// A set of predefined conditions for the access level and a combining function.
	// Structure is documented below.
	basic?: [...#BasicInitParameters] @go(Basic,[]BasicInitParameters)

	// Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
	// See CEL spec at: https://github.com/google/cel-spec.
	// Structure is documented below.
	custom?: [...#CustomInitParameters] @go(Custom,[]CustomInitParameters)

	// Description of the AccessLevel and its use. Does not affect behavior.
	description?: null | string @go(Description,*string)

	// Resource name for the Access Level. The short_name component must begin
	// with a letter and only include alphanumeric and '_'.
	// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
	name?: null | string @go(Name,*string)

	// The AccessPolicy this AccessLevel lives in.
	// Format: accessPolicies/{policy_id}
	parent?: null | string @go(Parent,*string)

	// Human readable title. Must be unique within the Policy.
	title?: null | string @go(Title,*string)
}

#AccessLevelObservation: {
	// A set of predefined conditions for the access level and a combining function.
	// Structure is documented below.
	basic?: [...#BasicObservation] @go(Basic,[]BasicObservation)

	// Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
	// See CEL spec at: https://github.com/google/cel-spec.
	// Structure is documented below.
	custom?: [...#CustomObservation] @go(Custom,[]CustomObservation)

	// Description of the AccessLevel and its use. Does not affect behavior.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format {{name}}
	id?: null | string @go(ID,*string)

	// Resource name for the Access Level. The short_name component must begin
	// with a letter and only include alphanumeric and '_'.
	// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
	name?: null | string @go(Name,*string)

	// The AccessPolicy this AccessLevel lives in.
	// Format: accessPolicies/{policy_id}
	parent?: null | string @go(Parent,*string)

	// Human readable title. Must be unique within the Policy.
	title?: null | string @go(Title,*string)
}

#AccessLevelParameters: {
	// A set of predefined conditions for the access level and a combining function.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	basic?: [...#BasicParameters] @go(Basic,[]BasicParameters)

	// Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
	// See CEL spec at: https://github.com/google/cel-spec.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	custom?: [...#CustomParameters] @go(Custom,[]CustomParameters)

	// Description of the AccessLevel and its use. Does not affect behavior.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Resource name for the Access Level. The short_name component must begin
	// with a letter and only include alphanumeric and '_'.
	// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The AccessPolicy this AccessLevel lives in.
	// Format: accessPolicies/{policy_id}
	// +kubebuilder:validation:Optional
	parent?: null | string @go(Parent,*string)

	// Human readable title. Must be unique within the Policy.
	// +kubebuilder:validation:Optional
	title?: null | string @go(Title,*string)
}

#BasicInitParameters: {
	// How the conditions list should be combined to determine if a request
	// is granted this AccessLevel. If AND is used, each Condition in
	// conditions must be satisfied for the AccessLevel to be applied. If
	// OR is used, at least one Condition in conditions must be satisfied
	// for the AccessLevel to be applied.
	// Default value is AND.
	// Possible values are: AND, OR.
	combiningFunction?: null | string @go(CombiningFunction,*string)

	// A set of requirements for the AccessLevel to be granted.
	// Structure is documented below.
	conditions?: [...#ConditionsInitParameters] @go(Conditions,[]ConditionsInitParameters)
}

#BasicObservation: {
	// How the conditions list should be combined to determine if a request
	// is granted this AccessLevel. If AND is used, each Condition in
	// conditions must be satisfied for the AccessLevel to be applied. If
	// OR is used, at least one Condition in conditions must be satisfied
	// for the AccessLevel to be applied.
	// Default value is AND.
	// Possible values are: AND, OR.
	combiningFunction?: null | string @go(CombiningFunction,*string)

	// A set of requirements for the AccessLevel to be granted.
	// Structure is documented below.
	conditions?: [...#ConditionsObservation] @go(Conditions,[]ConditionsObservation)
}

#BasicParameters: {
	// How the conditions list should be combined to determine if a request
	// is granted this AccessLevel. If AND is used, each Condition in
	// conditions must be satisfied for the AccessLevel to be applied. If
	// OR is used, at least one Condition in conditions must be satisfied
	// for the AccessLevel to be applied.
	// Default value is AND.
	// Possible values are: AND, OR.
	// +kubebuilder:validation:Optional
	combiningFunction?: null | string @go(CombiningFunction,*string)

	// A set of requirements for the AccessLevel to be granted.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	conditions: [...#ConditionsParameters] @go(Conditions,[]ConditionsParameters)
}

#ConditionsInitParameters: {
	// Device specific restrictions, all restrictions must hold for
	// the Condition to be true. If not specified, all devices are
	// allowed.
	// Structure is documented below.
	devicePolicy?: [...#DevicePolicyInitParameters] @go(DevicePolicy,[]DevicePolicyInitParameters)

	// A list of CIDR block IP subnetwork specification. May be IPv4
	// or IPv6.
	// Note that for a CIDR IP address block, the specified IP address
	// portion must be properly truncated (i.e. all the host bits must
	// be zero) or the input is considered malformed. For example,
	// "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly,
	// for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32"
	// is not. The originating IP of a request must be in one of the
	// listed subnets in order for this Condition to be true.
	// If empty, all IP addresses are allowed.
	ipSubnetworks?: [...null | string] @go(IPSubnetworks,[]*string)

	// An allowed list of members (users, service accounts).
	// Using groups is not supported yet.
	// The signed-in user originating the request must be a part of one
	// of the provided members. If not specified, a request may come
	// from any user (logged in/not logged in, not present in any
	// groups, etc.).
	// Formats: user:{emailid}, serviceAccount:{emailid}
	members?: [...null | string] @go(Members,[]*string)

	// Whether to negate the Condition. If true, the Condition becomes
	// a NAND over its non-empty fields, each field must be false for
	// the Condition overall to be satisfied. Defaults to false.
	negate?: null | bool @go(Negate,*bool)

	// The request must originate from one of the provided
	// countries/regions.
	// Format: A valid ISO 3166-1 alpha-2 code.
	regions?: [...null | string] @go(Regions,[]*string)

	// A list of other access levels defined in the same Policy,
	// referenced by resource name. Referencing an AccessLevel which
	// does not exist is an error. All access levels listed must be
	// granted for the Condition to be true.
	// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
	requiredAccessLevels?: [...null | string] @go(RequiredAccessLevels,[]*string)
}

#ConditionsObservation: {
	// Device specific restrictions, all restrictions must hold for
	// the Condition to be true. If not specified, all devices are
	// allowed.
	// Structure is documented below.
	devicePolicy?: [...#DevicePolicyObservation] @go(DevicePolicy,[]DevicePolicyObservation)

	// A list of CIDR block IP subnetwork specification. May be IPv4
	// or IPv6.
	// Note that for a CIDR IP address block, the specified IP address
	// portion must be properly truncated (i.e. all the host bits must
	// be zero) or the input is considered malformed. For example,
	// "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly,
	// for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32"
	// is not. The originating IP of a request must be in one of the
	// listed subnets in order for this Condition to be true.
	// If empty, all IP addresses are allowed.
	ipSubnetworks?: [...null | string] @go(IPSubnetworks,[]*string)

	// An allowed list of members (users, service accounts).
	// Using groups is not supported yet.
	// The signed-in user originating the request must be a part of one
	// of the provided members. If not specified, a request may come
	// from any user (logged in/not logged in, not present in any
	// groups, etc.).
	// Formats: user:{emailid}, serviceAccount:{emailid}
	members?: [...null | string] @go(Members,[]*string)

	// Whether to negate the Condition. If true, the Condition becomes
	// a NAND over its non-empty fields, each field must be false for
	// the Condition overall to be satisfied. Defaults to false.
	negate?: null | bool @go(Negate,*bool)

	// The request must originate from one of the provided
	// countries/regions.
	// Format: A valid ISO 3166-1 alpha-2 code.
	regions?: [...null | string] @go(Regions,[]*string)

	// A list of other access levels defined in the same Policy,
	// referenced by resource name. Referencing an AccessLevel which
	// does not exist is an error. All access levels listed must be
	// granted for the Condition to be true.
	// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
	requiredAccessLevels?: [...null | string] @go(RequiredAccessLevels,[]*string)
}

#ConditionsParameters: {
	// Device specific restrictions, all restrictions must hold for
	// the Condition to be true. If not specified, all devices are
	// allowed.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	devicePolicy?: [...#DevicePolicyParameters] @go(DevicePolicy,[]DevicePolicyParameters)

	// A list of CIDR block IP subnetwork specification. May be IPv4
	// or IPv6.
	// Note that for a CIDR IP address block, the specified IP address
	// portion must be properly truncated (i.e. all the host bits must
	// be zero) or the input is considered malformed. For example,
	// "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly,
	// for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32"
	// is not. The originating IP of a request must be in one of the
	// listed subnets in order for this Condition to be true.
	// If empty, all IP addresses are allowed.
	// +kubebuilder:validation:Optional
	ipSubnetworks?: [...null | string] @go(IPSubnetworks,[]*string)

	// An allowed list of members (users, service accounts).
	// Using groups is not supported yet.
	// The signed-in user originating the request must be a part of one
	// of the provided members. If not specified, a request may come
	// from any user (logged in/not logged in, not present in any
	// groups, etc.).
	// Formats: user:{emailid}, serviceAccount:{emailid}
	// +kubebuilder:validation:Optional
	members?: [...null | string] @go(Members,[]*string)

	// Whether to negate the Condition. If true, the Condition becomes
	// a NAND over its non-empty fields, each field must be false for
	// the Condition overall to be satisfied. Defaults to false.
	// +kubebuilder:validation:Optional
	negate?: null | bool @go(Negate,*bool)

	// The request must originate from one of the provided
	// countries/regions.
	// Format: A valid ISO 3166-1 alpha-2 code.
	// +kubebuilder:validation:Optional
	regions?: [...null | string] @go(Regions,[]*string)

	// A list of other access levels defined in the same Policy,
	// referenced by resource name. Referencing an AccessLevel which
	// does not exist is an error. All access levels listed must be
	// granted for the Condition to be true.
	// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
	// +kubebuilder:validation:Optional
	requiredAccessLevels?: [...null | string] @go(RequiredAccessLevels,[]*string)
}

#CustomInitParameters: {
	// Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
	// This page details the objects and attributes that are used to the build the CEL expressions for
	// custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec.
	// Structure is documented below.
	expr?: [...#ExprInitParameters] @go(Expr,[]ExprInitParameters)
}

#CustomObservation: {
	// Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
	// This page details the objects and attributes that are used to the build the CEL expressions for
	// custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec.
	// Structure is documented below.
	expr?: [...#ExprObservation] @go(Expr,[]ExprObservation)
}

#CustomParameters: {
	// Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
	// This page details the objects and attributes that are used to the build the CEL expressions for
	// custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	expr: [...#ExprParameters] @go(Expr,[]ExprParameters)
}

#DevicePolicyInitParameters: {
	// A list of allowed device management levels.
	// An empty list allows all management levels.
	// Each value may be one of: MANAGEMENT_UNSPECIFIED, NONE, BASIC, COMPLETE.
	allowedDeviceManagementLevels?: [...null | string] @go(AllowedDeviceManagementLevels,[]*string)

	// A list of allowed encryptions statuses.
	// An empty list allows all statuses.
	// Each value may be one of: ENCRYPTION_UNSPECIFIED, ENCRYPTION_UNSUPPORTED, UNENCRYPTED, ENCRYPTED.
	allowedEncryptionStatuses?: [...null | string] @go(AllowedEncryptionStatuses,[]*string)

	// A list of allowed OS versions.
	// An empty list allows all types and all versions.
	// Structure is documented below.
	osConstraints?: [...#OsConstraintsInitParameters] @go(OsConstraints,[]OsConstraintsInitParameters)

	// Whether the device needs to be approved by the customer admin.
	requireAdminApproval?: null | bool @go(RequireAdminApproval,*bool)

	// Whether the device needs to be corp owned.
	requireCorpOwned?: null | bool @go(RequireCorpOwned,*bool)

	// Whether or not screenlock is required for the DevicePolicy
	// to be true. Defaults to false.
	requireScreenLock?: null | bool @go(RequireScreenLock,*bool)
}

#DevicePolicyObservation: {
	// A list of allowed device management levels.
	// An empty list allows all management levels.
	// Each value may be one of: MANAGEMENT_UNSPECIFIED, NONE, BASIC, COMPLETE.
	allowedDeviceManagementLevels?: [...null | string] @go(AllowedDeviceManagementLevels,[]*string)

	// A list of allowed encryptions statuses.
	// An empty list allows all statuses.
	// Each value may be one of: ENCRYPTION_UNSPECIFIED, ENCRYPTION_UNSUPPORTED, UNENCRYPTED, ENCRYPTED.
	allowedEncryptionStatuses?: [...null | string] @go(AllowedEncryptionStatuses,[]*string)

	// A list of allowed OS versions.
	// An empty list allows all types and all versions.
	// Structure is documented below.
	osConstraints?: [...#OsConstraintsObservation] @go(OsConstraints,[]OsConstraintsObservation)

	// Whether the device needs to be approved by the customer admin.
	requireAdminApproval?: null | bool @go(RequireAdminApproval,*bool)

	// Whether the device needs to be corp owned.
	requireCorpOwned?: null | bool @go(RequireCorpOwned,*bool)

	// Whether or not screenlock is required for the DevicePolicy
	// to be true. Defaults to false.
	requireScreenLock?: null | bool @go(RequireScreenLock,*bool)
}

#DevicePolicyParameters: {
	// A list of allowed device management levels.
	// An empty list allows all management levels.
	// Each value may be one of: MANAGEMENT_UNSPECIFIED, NONE, BASIC, COMPLETE.
	// +kubebuilder:validation:Optional
	allowedDeviceManagementLevels?: [...null | string] @go(AllowedDeviceManagementLevels,[]*string)

	// A list of allowed encryptions statuses.
	// An empty list allows all statuses.
	// Each value may be one of: ENCRYPTION_UNSPECIFIED, ENCRYPTION_UNSUPPORTED, UNENCRYPTED, ENCRYPTED.
	// +kubebuilder:validation:Optional
	allowedEncryptionStatuses?: [...null | string] @go(AllowedEncryptionStatuses,[]*string)

	// A list of allowed OS versions.
	// An empty list allows all types and all versions.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	osConstraints?: [...#OsConstraintsParameters] @go(OsConstraints,[]OsConstraintsParameters)

	// Whether the device needs to be approved by the customer admin.
	// +kubebuilder:validation:Optional
	requireAdminApproval?: null | bool @go(RequireAdminApproval,*bool)

	// Whether the device needs to be corp owned.
	// +kubebuilder:validation:Optional
	requireCorpOwned?: null | bool @go(RequireCorpOwned,*bool)

	// Whether or not screenlock is required for the DevicePolicy
	// to be true. Defaults to false.
	// +kubebuilder:validation:Optional
	requireScreenLock?: null | bool @go(RequireScreenLock,*bool)
}

#ExprInitParameters: {
	// Description of the expression
	description?: null | string @go(Description,*string)

	// Textual representation of an expression in Common Expression Language syntax.
	expression?: null | string @go(Expression,*string)

	// String indicating the location of the expression for error reporting, e.g. a file name and a position in the file
	location?: null | string @go(Location,*string)

	// Title for the expression, i.e. a short string describing its purpose.
	title?: null | string @go(Title,*string)
}

#ExprObservation: {
	// Description of the expression
	description?: null | string @go(Description,*string)

	// Textual representation of an expression in Common Expression Language syntax.
	expression?: null | string @go(Expression,*string)

	// String indicating the location of the expression for error reporting, e.g. a file name and a position in the file
	location?: null | string @go(Location,*string)

	// Title for the expression, i.e. a short string describing its purpose.
	title?: null | string @go(Title,*string)
}

#ExprParameters: {
	// Description of the expression
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Textual representation of an expression in Common Expression Language syntax.
	// +kubebuilder:validation:Optional
	expression?: null | string @go(Expression,*string)

	// String indicating the location of the expression for error reporting, e.g. a file name and a position in the file
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Title for the expression, i.e. a short string describing its purpose.
	// +kubebuilder:validation:Optional
	title?: null | string @go(Title,*string)
}

#OsConstraintsInitParameters: {
	// The minimum allowed OS version. If not set, any version
	// of this OS satisfies the constraint.
	// Format: "major.minor.patch" such as "10.5.301", "9.2.1".
	minimumVersion?: null | string @go(MinimumVersion,*string)

	// The operating system type of the device.
	// Possible values are: OS_UNSPECIFIED, DESKTOP_MAC, DESKTOP_WINDOWS, DESKTOP_LINUX, DESKTOP_CHROME_OS, ANDROID, IOS.
	osType?: null | string @go(OsType,*string)

	// If you specify DESKTOP_CHROME_OS for osType, you can optionally include requireVerifiedChromeOs to require Chrome Verified Access.
	requireVerifiedChromeOs?: null | bool @go(RequireVerifiedChromeOs,*bool)
}

#OsConstraintsObservation: {
	// The minimum allowed OS version. If not set, any version
	// of this OS satisfies the constraint.
	// Format: "major.minor.patch" such as "10.5.301", "9.2.1".
	minimumVersion?: null | string @go(MinimumVersion,*string)

	// The operating system type of the device.
	// Possible values are: OS_UNSPECIFIED, DESKTOP_MAC, DESKTOP_WINDOWS, DESKTOP_LINUX, DESKTOP_CHROME_OS, ANDROID, IOS.
	osType?: null | string @go(OsType,*string)

	// If you specify DESKTOP_CHROME_OS for osType, you can optionally include requireVerifiedChromeOs to require Chrome Verified Access.
	requireVerifiedChromeOs?: null | bool @go(RequireVerifiedChromeOs,*bool)
}

#OsConstraintsParameters: {
	// The minimum allowed OS version. If not set, any version
	// of this OS satisfies the constraint.
	// Format: "major.minor.patch" such as "10.5.301", "9.2.1".
	// +kubebuilder:validation:Optional
	minimumVersion?: null | string @go(MinimumVersion,*string)

	// The operating system type of the device.
	// Possible values are: OS_UNSPECIFIED, DESKTOP_MAC, DESKTOP_WINDOWS, DESKTOP_LINUX, DESKTOP_CHROME_OS, ANDROID, IOS.
	// +kubebuilder:validation:Optional
	osType?: null | string @go(OsType,*string)

	// If you specify DESKTOP_CHROME_OS for osType, you can optionally include requireVerifiedChromeOs to require Chrome Verified Access.
	// +kubebuilder:validation:Optional
	requireVerifiedChromeOs?: null | bool @go(RequireVerifiedChromeOs,*bool)
}

// AccessLevelSpec defines the desired state of AccessLevel
#AccessLevelSpec: {
	forProvider: #AccessLevelParameters @go(ForProvider)

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
	initProvider?: #AccessLevelInitParameters @go(InitProvider)
}

// AccessLevelStatus defines the observed state of AccessLevel.
#AccessLevelStatus: {
	atProvider?: #AccessLevelObservation @go(AtProvider)
}

// AccessLevel is the Schema for the AccessLevels API. An AccessLevel is a label that can be applied to requests to GCP services, along with a list of requirements necessary for the label to be applied.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#AccessLevel: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.parent) || (has(self.initProvider) && has(self.initProvider.parent))",message="spec.forProvider.parent is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.title) || (has(self.initProvider) && has(self.initProvider.title))",message="spec.forProvider.title is a required parameter"
	spec:    #AccessLevelSpec   @go(Spec)
	status?: #AccessLevelStatus @go(Status)
}

// AccessLevelList contains a list of AccessLevels
#AccessLevelList: {
	items: [...#AccessLevel] @go(Items,[]AccessLevel)
}
