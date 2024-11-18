// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/dialogflowcx/v1beta1

package v1beta1

#IntentInitParameters: {
	// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
	description?: null | string @go(Description,*string)

	// The human-readable name of the intent, unique within the agent.
	displayName?: null | string @go(DisplayName,*string)

	// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
	// Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
	isFallback?: null | bool @go(IsFallback,*bool)

	// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
	// Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
	// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The language of the following fields in intent:
	// Intent.training_phrases.parts.text
	// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
	languageCode?: null | string @go(LanguageCode,*string)

	// The collection of parameters associated with the intent.
	// Structure is documented below.
	parameters?: [...#ParametersInitParameters] @go(Parameters,[]ParametersInitParameters)

	// The priority of this intent. Higher numbers represent higher priorities.
	// If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
	// If the supplied value is negative, the intent is ignored in runtime detect intent requests.
	priority?: null | float64 @go(Priority,*float64)

	// The collection of training phrases the agent is trained on to identify the intent.
	// Structure is documented below.
	trainingPhrases?: [...#TrainingPhrasesInitParameters] @go(TrainingPhrases,[]TrainingPhrasesInitParameters)
}

#IntentObservation: {
	// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
	description?: null | string @go(Description,*string)

	// The human-readable name of the intent, unique within the agent.
	displayName?: null | string @go(DisplayName,*string)

	// an identifier for the resource with format {{parent}}/intents/{{name}}
	id?: null | string @go(ID,*string)

	// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
	// Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
	isFallback?: null | bool @go(IsFallback,*bool)

	// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
	// Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
	// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The language of the following fields in intent:
	// Intent.training_phrases.parts.text
	// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
	languageCode?: null | string @go(LanguageCode,*string)

	// The unique identifier of the intent.
	// Format: projects//locations//agents//intents/.
	name?: null | string @go(Name,*string)

	// The collection of parameters associated with the intent.
	// Structure is documented below.
	parameters?: [...#ParametersObservation] @go(Parameters,[]ParametersObservation)

	// The agent to create an intent for.
	// Format: projects//locations//agents/.
	parent?: null | string @go(Parent,*string)

	// The priority of this intent. Higher numbers represent higher priorities.
	// If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
	// If the supplied value is negative, the intent is ignored in runtime detect intent requests.
	priority?: null | float64 @go(Priority,*float64)

	// The collection of training phrases the agent is trained on to identify the intent.
	// Structure is documented below.
	trainingPhrases?: [...#TrainingPhrasesObservation] @go(TrainingPhrases,[]TrainingPhrasesObservation)
}

#IntentParameters: {
	// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The human-readable name of the intent, unique within the agent.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
	// Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
	// +kubebuilder:validation:Optional
	isFallback?: null | bool @go(IsFallback,*bool)

	// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
	// Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
	// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The language of the following fields in intent:
	// Intent.training_phrases.parts.text
	// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
	// +kubebuilder:validation:Optional
	languageCode?: null | string @go(LanguageCode,*string)

	// The collection of parameters associated with the intent.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	parameters?: [...#ParametersParameters] @go(Parameters,[]ParametersParameters)

	// The agent to create an intent for.
	// Format: projects//locations//agents/.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/dialogflowcx/v1beta1.Agent
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	parent?: null | string @go(Parent,*string)

	// The priority of this intent. Higher numbers represent higher priorities.
	// If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
	// If the supplied value is negative, the intent is ignored in runtime detect intent requests.
	// +kubebuilder:validation:Optional
	priority?: null | float64 @go(Priority,*float64)

	// The collection of training phrases the agent is trained on to identify the intent.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	trainingPhrases?: [...#TrainingPhrasesParameters] @go(TrainingPhrases,[]TrainingPhrasesParameters)
}

#ParametersInitParameters: {
	// The entity type of the parameter.
	// Format: projects/-/locations/-/agents/-/entityTypes/ for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects//locations//agents//entityTypes/ for developer entity types.
	entityType?: null | string @go(EntityType,*string)

	// The unique identifier of the parameter. This field is used by training phrases to annotate their parts.
	id?: null | string @go(ID,*string)

	// Indicates whether the parameter represents a list of values.
	isList?: null | bool @go(IsList,*bool)

	// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging.
	// Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
	redact?: null | bool @go(Redact,*bool)
}

#ParametersObservation: {
	// The entity type of the parameter.
	// Format: projects/-/locations/-/agents/-/entityTypes/ for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects//locations//agents//entityTypes/ for developer entity types.
	entityType?: null | string @go(EntityType,*string)

	// The unique identifier of the parameter. This field is used by training phrases to annotate their parts.
	id?: null | string @go(ID,*string)

	// Indicates whether the parameter represents a list of values.
	isList?: null | bool @go(IsList,*bool)

	// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging.
	// Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
	redact?: null | bool @go(Redact,*bool)
}

#ParametersParameters: {
	// The entity type of the parameter.
	// Format: projects/-/locations/-/agents/-/entityTypes/ for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects//locations//agents//entityTypes/ for developer entity types.
	// +kubebuilder:validation:Optional
	entityType?: null | string @go(EntityType,*string)

	// The unique identifier of the parameter. This field is used by training phrases to annotate their parts.
	// +kubebuilder:validation:Optional
	id?: null | string @go(ID,*string)

	// Indicates whether the parameter represents a list of values.
	// +kubebuilder:validation:Optional
	isList?: null | bool @go(IsList,*bool)

	// Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging.
	// Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.
	// +kubebuilder:validation:Optional
	redact?: null | bool @go(Redact,*bool)
}

#PartsInitParameters: {
	// The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
	parameterId?: null | string @go(ParameterID,*string)

	// The text for this part.
	text?: null | string @go(Text,*string)
}

#PartsObservation: {
	// The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
	parameterId?: null | string @go(ParameterID,*string)

	// The text for this part.
	text?: null | string @go(Text,*string)
}

#PartsParameters: {
	// The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
	// +kubebuilder:validation:Optional
	parameterId?: null | string @go(ParameterID,*string)

	// The text for this part.
	// +kubebuilder:validation:Optional
	text?: null | string @go(Text,*string)
}

#TrainingPhrasesInitParameters: {
	// The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase.
	// Note: The API does not automatically annotate training phrases like the Dialogflow Console does.
	// Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated.
	// If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set.
	// If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways:
	// Part.text is set to a part of the phrase that has no parameters.
	// Part.text is set to a part of the phrase that you want to annotate, and the parameterId field is set.
	// Structure is documented below.
	parts?: [...#PartsInitParameters] @go(Parts,[]PartsInitParameters)

	// Indicates how many times this example was added to the intent.
	repeatCount?: null | float64 @go(RepeatCount,*float64)
}

#TrainingPhrasesObservation: {
	// (Output)
	// The unique identifier of the training phrase.
	id?: null | string @go(ID,*string)

	// The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase.
	// Note: The API does not automatically annotate training phrases like the Dialogflow Console does.
	// Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated.
	// If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set.
	// If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways:
	// Part.text is set to a part of the phrase that has no parameters.
	// Part.text is set to a part of the phrase that you want to annotate, and the parameterId field is set.
	// Structure is documented below.
	parts?: [...#PartsObservation] @go(Parts,[]PartsObservation)

	// Indicates how many times this example was added to the intent.
	repeatCount?: null | float64 @go(RepeatCount,*float64)
}

#TrainingPhrasesParameters: {
	// The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase.
	// Note: The API does not automatically annotate training phrases like the Dialogflow Console does.
	// Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated.
	// If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set.
	// If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways:
	// Part.text is set to a part of the phrase that has no parameters.
	// Part.text is set to a part of the phrase that you want to annotate, and the parameterId field is set.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	parts?: [...#PartsParameters] @go(Parts,[]PartsParameters)

	// Indicates how many times this example was added to the intent.
	// +kubebuilder:validation:Optional
	repeatCount?: null | float64 @go(RepeatCount,*float64)
}

// IntentSpec defines the desired state of Intent
#IntentSpec: {
	forProvider: #IntentParameters @go(ForProvider)

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
	initProvider?: #IntentInitParameters @go(InitProvider)
}

// IntentStatus defines the observed state of Intent.
#IntentStatus: {
	atProvider?: #IntentObservation @go(AtProvider)
}

// Intent is the Schema for the Intents API. An intent represents a user's intent to interact with a conversational agent.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Intent: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || has(self.initProvider.displayName)",message="displayName is a required parameter"
	spec:    #IntentSpec   @go(Spec)
	status?: #IntentStatus @go(Status)
}

// IntentList contains a list of Intents
#IntentList: {
	items: [...#Intent] @go(Items,[]Intent)
}
