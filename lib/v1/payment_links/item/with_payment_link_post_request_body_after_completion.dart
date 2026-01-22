// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_after_completion_hosted_confirmation.dart';
import './with_payment_link_post_request_body_after_completion_redirect.dart';
import './with_payment_link_post_request_body_after_completion_type.dart';

/// auto generated
/// Behavior after the purchase is complete.
class WithPaymentLinkPostRequestBodyAfterCompletion
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The hosted_confirmation property
  WithPaymentLinkPostRequestBodyAfterCompletionHostedConfirmation?
      hostedConfirmation;

  ///  The redirect property
  WithPaymentLinkPostRequestBodyAfterCompletionRedirect? redirect;

  ///  The type property
  WithPaymentLinkPostRequestBodyAfterCompletionType? type_;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyAfterCompletion] and sets the default values.
  WithPaymentLinkPostRequestBodyAfterCompletion() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyAfterCompletion
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyAfterCompletion();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['hosted_confirmation'] = (node) => hostedConfirmation =
        node.getObjectValue<
                WithPaymentLinkPostRequestBodyAfterCompletionHostedConfirmation>(
            WithPaymentLinkPostRequestBodyAfterCompletionHostedConfirmation
                .createFromDiscriminatorValue);
    deserializerMap['redirect'] = (node) => redirect = node
        .getObjectValue<WithPaymentLinkPostRequestBodyAfterCompletionRedirect>(
            WithPaymentLinkPostRequestBodyAfterCompletionRedirect
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<WithPaymentLinkPostRequestBodyAfterCompletionType>(
            (stringValue) => WithPaymentLinkPostRequestBodyAfterCompletionType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyAfterCompletionHostedConfirmation>(
        'hosted_confirmation', hostedConfirmation);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyAfterCompletionRedirect>(
        'redirect', redirect);
    writer.writeEnumValue<WithPaymentLinkPostRequestBodyAfterCompletionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
