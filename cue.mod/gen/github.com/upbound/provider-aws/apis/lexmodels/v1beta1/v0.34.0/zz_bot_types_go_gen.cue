// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/lexmodels/v1beta1

package v1beta1

#AbortStatementObservation: {
	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message.
	message?: [...#MessageObservation] @go(Message,[]MessageObservation)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card.
	responseCard?: null | string @go(ResponseCard,*string)
}

#AbortStatementParameters: {
	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message.
	// +kubebuilder:validation:Required
	message: [...#MessageParameters] @go(Message,[]MessageParameters)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card.
	// +kubebuilder:validation:Optional
	responseCard?: null | string @go(ResponseCard,*string)
}

#BotObservation: {
	// The message that Amazon Lex uses to abort a conversation. Attributes are documented under statement.
	abortStatement?: [...#AbortStatementObservation] @go(AbortStatement,[]AbortStatementObservation)
	arn?: null | string @go(Arn,*string)

	// Checksum identifying the version of the bot that was created. The checksum is not
	// included as an argument because the resource will add it automatically when updating the bot.
	checksum?: null | string @go(Checksum,*string)

	// By specifying true, you confirm that your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. For more information see the Amazon Lex FAQ and the Amazon Lex PutBot API Docs.
	childDirected?: null | bool @go(ChildDirected,*bool)

	// The message that Amazon Lex uses when it doesn't understand the user's request. Attributes are documented under prompt.
	clarificationPrompt?: [...#ClarificationPromptObservation] @go(ClarificationPrompt,[]ClarificationPromptObservation)

	// Determines if a new bot version is created when the initial resource is created and on each update. Defaults to false.
	createVersion?: null | bool @go(CreateVersion,*bool)

	// The date when the bot version was created.
	createdDate?: null | string @go(CreatedDate,*string)

	// A description of the bot. Must be less than or equal to 200 characters in length.
	description?: null | string @go(Description,*string)

	// When set to true user utterances are sent to Amazon Comprehend for sentiment analysis. If you don't specify detectSentiment, the default is false.
	detectSentiment?: null | bool @go(DetectSentiment,*bool)

	// Set to true to enable access to natural language understanding improvements. When you set the enable_model_improvements parameter to true you can use the nlu_intent_confidence_threshold parameter to configure confidence scores. For more information, see Confidence Scores. You can only set the enable_model_improvements parameter in certain Regions. If you set the parameter to true, your bot has access to accuracy improvements. For more information see the Amazon Lex Bot PutBot API Docs.
	enableModelImprovements?: null | bool @go(EnableModelImprovements,*bool)

	// If status is FAILED, Amazon Lex provides the reason that it failed to build the bot.
	failureReason?: null | string @go(FailureReason,*string)
	id?:            null | string @go(ID,*string)

	// The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. Default is 300. Must be a number between 60 and 86400 (inclusive).
	idleSessionTtlInSeconds?: null | float64 @go(IdleSessionTTLInSeconds,*float64)

	// A set of Intent objects. Each intent represents a command that a user can express. Attributes are documented under intent. Can have up to 250 Intent objects.
	intent?: [...#IntentObservation] @go(Intent,[]IntentObservation)

	// The date when the $LATEST version of this bot was updated.
	lastUpdatedDate?: null | string @go(LastUpdatedDate,*string)

	// Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. For available locales, see Amazon Lex Bot PutBot API Docs. Default is en-US.
	locale?: null | string @go(Locale,*string)

	// Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot. For more information see Amazon Lex Bot PutBot API Docs This value requires enable_model_improvements to be set to true and the default is 0. Must be a float between 0 and 1.
	nluIntentConfidenceThreshold?: null | float64 @go(NluIntentConfidenceThreshold,*float64)

	// If you set the process_behavior element to BUILD, Amazon Lex builds the bot so that it can be run. If you set the element to SAVE Amazon Lex saves the bot, but doesn't build it. Default is SAVE.
	processBehavior?: null | string @go(ProcessBehavior,*string)

	// When you send a request to create or update a bot, Amazon Lex sets the status response
	// element to BUILDING. After Amazon Lex builds the bot, it sets status to READY. If Amazon Lex can't
	// build the bot, it sets status to FAILED. Amazon Lex returns the reason for the failure in the
	// failure_reason response element.
	status?: null | string @go(Status,*string)

	// The version of the bot.
	version?: null | string @go(Version,*string)

	// The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see Available Voices in the Amazon Polly Developer Guide.
	voiceId?: null | string @go(VoiceID,*string)
}

#BotParameters: {
	// The message that Amazon Lex uses to abort a conversation. Attributes are documented under statement.
	// +kubebuilder:validation:Optional
	abortStatement?: [...#AbortStatementParameters] @go(AbortStatement,[]AbortStatementParameters)

	// By specifying true, you confirm that your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. For more information see the Amazon Lex FAQ and the Amazon Lex PutBot API Docs.
	// +kubebuilder:validation:Optional
	childDirected?: null | bool @go(ChildDirected,*bool)

	// The message that Amazon Lex uses when it doesn't understand the user's request. Attributes are documented under prompt.
	// +kubebuilder:validation:Optional
	clarificationPrompt?: [...#ClarificationPromptParameters] @go(ClarificationPrompt,[]ClarificationPromptParameters)

	// Determines if a new bot version is created when the initial resource is created and on each update. Defaults to false.
	// +kubebuilder:validation:Optional
	createVersion?: null | bool @go(CreateVersion,*bool)

	// A description of the bot. Must be less than or equal to 200 characters in length.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// When set to true user utterances are sent to Amazon Comprehend for sentiment analysis. If you don't specify detectSentiment, the default is false.
	// +kubebuilder:validation:Optional
	detectSentiment?: null | bool @go(DetectSentiment,*bool)

	// Set to true to enable access to natural language understanding improvements. When you set the enable_model_improvements parameter to true you can use the nlu_intent_confidence_threshold parameter to configure confidence scores. For more information, see Confidence Scores. You can only set the enable_model_improvements parameter in certain Regions. If you set the parameter to true, your bot has access to accuracy improvements. For more information see the Amazon Lex Bot PutBot API Docs.
	// +kubebuilder:validation:Optional
	enableModelImprovements?: null | bool @go(EnableModelImprovements,*bool)

	// The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. Default is 300. Must be a number between 60 and 86400 (inclusive).
	// +kubebuilder:validation:Optional
	idleSessionTtlInSeconds?: null | float64 @go(IdleSessionTTLInSeconds,*float64)

	// A set of Intent objects. Each intent represents a command that a user can express. Attributes are documented under intent. Can have up to 250 Intent objects.
	// +kubebuilder:validation:Optional
	intent?: [...#IntentParameters] @go(Intent,[]IntentParameters)

	// Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. For available locales, see Amazon Lex Bot PutBot API Docs. Default is en-US.
	// +kubebuilder:validation:Optional
	locale?: null | string @go(Locale,*string)

	// Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot. For more information see Amazon Lex Bot PutBot API Docs This value requires enable_model_improvements to be set to true and the default is 0. Must be a float between 0 and 1.
	// +kubebuilder:validation:Optional
	nluIntentConfidenceThreshold?: null | float64 @go(NluIntentConfidenceThreshold,*float64)

	// If you set the process_behavior element to BUILD, Amazon Lex builds the bot so that it can be run. If you set the element to SAVE Amazon Lex saves the bot, but doesn't build it. Default is SAVE.
	// +kubebuilder:validation:Optional
	processBehavior?: null | string @go(ProcessBehavior,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see Available Voices in the Amazon Polly Developer Guide.
	// +kubebuilder:validation:Optional
	voiceId?: null | string @go(VoiceID,*string)
}

#ClarificationPromptMessageObservation: {
	// The text of the message.
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response.
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#ClarificationPromptMessageParameters: {
	// The text of the message.
	// +kubebuilder:validation:Required
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	// +kubebuilder:validation:Required
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response.
	// +kubebuilder:validation:Optional
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#ClarificationPromptObservation: {
	// The number of times to prompt the user for information.
	maxAttempts?: null | float64 @go(MaxAttempts,*float64)

	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message.
	message?: [...#ClarificationPromptMessageObservation] @go(Message,[]ClarificationPromptMessageObservation)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card.
	responseCard?: null | string @go(ResponseCard,*string)
}

#ClarificationPromptParameters: {
	// The number of times to prompt the user for information.
	// +kubebuilder:validation:Required
	maxAttempts?: null | float64 @go(MaxAttempts,*float64)

	// A set of messages, each of which provides a message string and its type.
	// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
	// Attributes are documented under message.
	// +kubebuilder:validation:Required
	message: [...#ClarificationPromptMessageParameters] @go(Message,[]ClarificationPromptMessageParameters)

	// The response card. Amazon Lex will substitute session attributes and
	// slot values into the response card. For more information, see
	// Example: Using a Response Card.
	// +kubebuilder:validation:Optional
	responseCard?: null | string @go(ResponseCard,*string)
}

#IntentObservation: {
	// The name of the intent. Must be less than or equal to 100 characters in length.
	intentName?: null | string @go(IntentName,*string)

	// The version of the intent. Must be less than or equal to 64 characters in length.
	intentVersion?: null | string @go(IntentVersion,*string)
}

#IntentParameters: {
	// The name of the intent. Must be less than or equal to 100 characters in length.
	// +kubebuilder:validation:Required
	intentName?: null | string @go(IntentName,*string)

	// The version of the intent. Must be less than or equal to 64 characters in length.
	// +kubebuilder:validation:Required
	intentVersion?: null | string @go(IntentVersion,*string)
}

#MessageObservation: {
	// The text of the message.
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response.
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

#MessageParameters: {
	// The text of the message.
	// +kubebuilder:validation:Required
	content?: null | string @go(Content,*string)

	// The content type of the message string.
	// +kubebuilder:validation:Required
	contentType?: null | string @go(ContentType,*string)

	// Identifies the message group that the message belongs to. When a group
	// is assigned to a message, Amazon Lex returns one message from each group in the response.
	// +kubebuilder:validation:Optional
	groupNumber?: null | float64 @go(GroupNumber,*float64)
}

// BotSpec defines the desired state of Bot
#BotSpec: {
	forProvider: #BotParameters @go(ForProvider)
}

// BotStatus defines the observed state of Bot.
#BotStatus: {
	atProvider?: #BotObservation @go(AtProvider)
}

// Bot is the Schema for the Bots API. Provides an Amazon Lex bot resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Bot: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.abortStatement)",message="abortStatement is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.childDirected)",message="childDirected is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.intent)",message="intent is a required parameter"
	spec:    #BotSpec   @go(Spec)
	status?: #BotStatus @go(Status)
}

// BotList contains a list of Bots
#BotList: {
	items: [...#Bot] @go(Items,[]Bot)
}
