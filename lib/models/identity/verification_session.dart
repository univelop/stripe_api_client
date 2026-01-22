// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../gelato_provided_details.dart';
import '../gelato_related_person.dart';
import '../gelato_session_last_error.dart';
import '../gelato_verification_session_options.dart';
import '../gelato_verified_outputs.dart';
import '../verification_session_redaction.dart';
import './verification_session_last_verification_report.dart';
import './verification_session_metadata.dart';
import './verification_session_object.dart';
import './verification_session_status.dart';
import './verification_session_type.dart';

/// auto generated
/// A VerificationSession guides you through the process of collecting and verifying the identitiesof your users. It contains details about the type of verification, such as what [verificationcheck](/docs/identity/verification-checks) to perform. Only create one VerificationSession foreach verification in your system.A VerificationSession transitions through [multiplestatuses](/docs/identity/how-sessions-work) throughout its lifetime as it progresses throughthe verification flow. The VerificationSession contains the user's verified data afterverification checks are complete.Related guide: [The Verification Sessions API](https://docs.stripe.com/identity/verification-sessions)
class VerificationSession implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
  String? clientReferenceId;

  ///  The short-lived client secret used by Stripe.js to [show a verification modal](https://docs.stripe.com/js/identity/modal) inside your app. This client secret expires after 24 hours and can only be used once. Don’t store it, log it, embed it in a URL, or expose it to anyone other than the user. Make sure that you have TLS enabled on any page that includes the client secret. Refer to our docs on [passing the client secret to the frontend](https://docs.stripe.com/identity/verification-sessions#client-secret) to learn more.
  String? clientSecret;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Unique identifier for the object.
  String? id;

  ///  If present, this property tells you the last error encountered when processing the verification.
  GelatoSessionLastError? lastError;

  ///  ID of the most recent VerificationReport. [Learn more about accessing detailed verification results.](https://docs.stripe.com/identity/verification-sessions#results)
  VerificationSessionLastVerificationReport? lastVerificationReport;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  VerificationSessionMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  VerificationSessionObject? object;

  ///  A set of options for the session’s verification checks.
  GelatoVerificationSessionOptions? options;

  ///  Details provided about the user being verified. These details may be shown to the user.
  GelatoProvidedDetails? providedDetails;

  ///  Redaction status of this VerificationSession. If the VerificationSession is not redacted, this field will be null.
  VerificationSessionRedaction? redaction;

  ///  Customer ID
  String? relatedCustomer;

  ///  The ID of the Account representing a customer.
  String? relatedCustomerAccount;

  ///  The related_person property
  GelatoRelatedPerson? relatedPerson;

  ///  Status of this VerificationSession. [Learn more about the lifecycle of sessions](https://docs.stripe.com/identity/how-sessions-work).
  VerificationSessionStatus? status;

  ///  The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed.
  VerificationSessionType? type_;

  ///  The short-lived URL that you use to redirect a user to Stripe to submit their identity information. This URL expires after 48 hours and can only be used once. Don’t store it, log it, send it in emails or expose it to anyone other than the user. Refer to our docs on [verifying identity documents](https://docs.stripe.com/identity/verify-identity-documents?platform=web&type=redirect) to learn how to redirect users to Stripe.
  String? url;

  ///  The configuration token of a verification flow from the dashboard.
  String? verificationFlow;

  ///  The user’s verified data.
  GelatoVerifiedOutputs? verifiedOutputs;

  /// Instantiates a new [VerificationSession] and sets the default values.
  VerificationSession() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static VerificationSession createFromDiscriminatorValue(ParseNode parseNode) {
    return VerificationSession();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['client_reference_id'] =
        (node) => clientReferenceId = node.getStringValue();
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['last_error'] = (node) => lastError =
        node.getObjectValue<GelatoSessionLastError>(
            GelatoSessionLastError.createFromDiscriminatorValue);
    deserializerMap['last_verification_report'] = (node) =>
        lastVerificationReport =
            node.getObjectValue<VerificationSessionLastVerificationReport>(
                VerificationSessionLastVerificationReport
                    .createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<VerificationSessionMetadata>(
            VerificationSessionMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<VerificationSessionObject>((stringValue) =>
            VerificationSessionObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['options'] = (node) => options =
        node.getObjectValue<GelatoVerificationSessionOptions>(
            GelatoVerificationSessionOptions.createFromDiscriminatorValue);
    deserializerMap['provided_details'] = (node) => providedDetails =
        node.getObjectValue<GelatoProvidedDetails>(
            GelatoProvidedDetails.createFromDiscriminatorValue);
    deserializerMap['redaction'] = (node) => redaction =
        node.getObjectValue<VerificationSessionRedaction>(
            VerificationSessionRedaction.createFromDiscriminatorValue);
    deserializerMap['related_customer'] =
        (node) => relatedCustomer = node.getStringValue();
    deserializerMap['related_customer_account'] =
        (node) => relatedCustomerAccount = node.getStringValue();
    deserializerMap['related_person'] = (node) => relatedPerson =
        node.getObjectValue<GelatoRelatedPerson>(
            GelatoRelatedPerson.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<VerificationSessionStatus>((stringValue) =>
            VerificationSessionStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<VerificationSessionType>((stringValue) =>
            VerificationSessionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    deserializerMap['verification_flow'] =
        (node) => verificationFlow = node.getStringValue();
    deserializerMap['verified_outputs'] = (node) => verifiedOutputs =
        node.getObjectValue<GelatoVerifiedOutputs>(
            GelatoVerifiedOutputs.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('client_reference_id', clientReferenceId);
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeIntValue('created', created);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<GelatoSessionLastError>('last_error', lastError);
    writer.writeObjectValue<VerificationSessionLastVerificationReport>(
        'last_verification_report', lastVerificationReport);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<VerificationSessionMetadata>('metadata', metadata);
    writer.writeEnumValue<VerificationSessionObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<GelatoVerificationSessionOptions>(
        'options', options);
    writer.writeObjectValue<GelatoProvidedDetails>(
        'provided_details', providedDetails);
    writer.writeObjectValue<VerificationSessionRedaction>(
        'redaction', redaction);
    writer.writeStringValue('related_customer', relatedCustomer);
    writer.writeStringValue('related_customer_account', relatedCustomerAccount);
    writer.writeObjectValue<GelatoRelatedPerson>(
        'related_person', relatedPerson);
    writer.writeEnumValue<VerificationSessionStatus>(
        'status', status, (e) => e?.value);
    writer.writeEnumValue<VerificationSessionType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeStringValue('verification_flow', verificationFlow);
    writer.writeObjectValue<GelatoVerifiedOutputs>(
        'verified_outputs', verifiedOutputs);
    writer.writeAdditionalData(additionalData);
  }
}
