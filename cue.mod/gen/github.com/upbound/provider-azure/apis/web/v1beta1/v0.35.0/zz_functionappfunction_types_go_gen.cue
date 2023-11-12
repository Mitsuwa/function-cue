// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/web/v1beta1

package v1beta1

#FileInitParameters: {
	// The content of the file. Changing this forces a new resource to be created.
	// The content of the file.
	content?: null | string @go(Content,*string)

	// The filename of the file to be uploaded. Changing this forces a new resource to be created.
	// The filename of the file to be uploaded.
	name?: null | string @go(Name,*string)
}

#FileObservation: {
	// The content of the file. Changing this forces a new resource to be created.
	// The content of the file.
	content?: null | string @go(Content,*string)

	// The filename of the file to be uploaded. Changing this forces a new resource to be created.
	// The filename of the file to be uploaded.
	name?: null | string @go(Name,*string)
}

#FileParameters: {
	// The content of the file. Changing this forces a new resource to be created.
	// The content of the file.
	// +kubebuilder:validation:Optional
	content?: null | string @go(Content,*string)

	// The filename of the file to be uploaded. Changing this forces a new resource to be created.
	// The filename of the file to be uploaded.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#FunctionAppFunctionInitParameters: {
	// The config for this Function in JSON format.
	// The config for this Function in JSON format.
	configJson?: null | string @go(ConfigJSON,*string)

	// Should this function be enabled. Defaults to true.
	// Should this function be enabled. Defaults to `true`.
	enabled?: null | bool @go(Enabled,*bool)

	// A file block as detailed below. Changing this forces a new resource to be created.
	file?: [...#FileInitParameters] @go(File,[]FileInitParameters)

	// The language the Function is written in. Possible values are CSharp, Custom, Java, Javascript, Python, PowerShell, and TypeScript.
	// The language the Function is written in.
	language?: null | string @go(Language,*string)

	// The name of the function. Changing this forces a new resource to be created.
	// The name of the function.
	name?: null | string @go(Name,*string)

	// The test data for the function.
	// The test data for the function.
	testData?: null | string @go(TestData,*string)
}

#FunctionAppFunctionObservation: {
	// The config for this Function in JSON format.
	// The config for this Function in JSON format.
	configJson?: null | string @go(ConfigJSON,*string)

	// The URL of the configuration JSON.
	// The URL of the configuration JSON.
	configUrl?: null | string @go(ConfigURL,*string)

	// Should this function be enabled. Defaults to true.
	// Should this function be enabled. Defaults to `true`.
	enabled?: null | bool @go(Enabled,*bool)

	// A file block as detailed below. Changing this forces a new resource to be created.
	file?: [...#FileObservation] @go(File,[]FileObservation)

	// The ID of the Function App in which this function should reside. Changing this forces a new resource to be created.
	// The ID of the Function App in which this function should reside.
	functionAppId?: null | string @go(FunctionAppID,*string)

	// The ID of the Function App Function
	id?: null | string @go(ID,*string)

	// The invocation URL.
	// The invocation URL.
	invocationUrl?: null | string @go(InvocationURL,*string)

	// The language the Function is written in. Possible values are CSharp, Custom, Java, Javascript, Python, PowerShell, and TypeScript.
	// The language the Function is written in.
	language?: null | string @go(Language,*string)

	// The name of the function. Changing this forces a new resource to be created.
	// The name of the function.
	name?: null | string @go(Name,*string)

	// The Script root path URL.
	// The Script root path URL.
	scriptRootPathUrl?: null | string @go(ScriptRootPathURL,*string)

	// The script URL.
	// The script URL.
	scriptUrl?: null | string @go(ScriptURL,*string)

	// The URL for the Secrets File.
	// The URL for the Secrets File.
	secretsFileUrl?: null | string @go(SecretsFileURL,*string)

	// The test data for the function.
	// The test data for the function.
	testData?: null | string @go(TestData,*string)

	// The Test data URL.
	// The Test data URL.
	testDataUrl?: null | string @go(TestDataURL,*string)

	// The function URL.
	// The function URL.
	url?: null | string @go(URL,*string)
}

#FunctionAppFunctionParameters: {
	// The config for this Function in JSON format.
	// The config for this Function in JSON format.
	// +kubebuilder:validation:Optional
	configJson?: null | string @go(ConfigJSON,*string)

	// Should this function be enabled. Defaults to true.
	// Should this function be enabled. Defaults to `true`.
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// A file block as detailed below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	file?: [...#FileParameters] @go(File,[]FileParameters)

	// The ID of the Function App in which this function should reside. Changing this forces a new resource to be created.
	// The ID of the Function App in which this function should reside.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/web/v1beta1.LinuxFunctionApp
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	functionAppId?: null | string @go(FunctionAppID,*string)

	// The language the Function is written in. Possible values are CSharp, Custom, Java, Javascript, Python, PowerShell, and TypeScript.
	// The language the Function is written in.
	// +kubebuilder:validation:Optional
	language?: null | string @go(Language,*string)

	// The name of the function. Changing this forces a new resource to be created.
	// The name of the function.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The test data for the function.
	// The test data for the function.
	// +kubebuilder:validation:Optional
	testData?: null | string @go(TestData,*string)
}

// FunctionAppFunctionSpec defines the desired state of FunctionAppFunction
#FunctionAppFunctionSpec: {
	forProvider: #FunctionAppFunctionParameters @go(ForProvider)

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
	initProvider?: #FunctionAppFunctionInitParameters @go(InitProvider)
}

// FunctionAppFunctionStatus defines the observed state of FunctionAppFunction.
#FunctionAppFunctionStatus: {
	atProvider?: #FunctionAppFunctionObservation @go(AtProvider)
}

// FunctionAppFunction is the Schema for the FunctionAppFunctions API. Manages a Function App Function.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#FunctionAppFunction: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.configJson) || has(self.initProvider.configJson)",message="configJson is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	spec:    #FunctionAppFunctionSpec   @go(Spec)
	status?: #FunctionAppFunctionStatus @go(Status)
}

// FunctionAppFunctionList contains a list of FunctionAppFunctions
#FunctionAppFunctionList: {
	items: [...#FunctionAppFunction] @go(Items,[]FunctionAppFunction)
}
