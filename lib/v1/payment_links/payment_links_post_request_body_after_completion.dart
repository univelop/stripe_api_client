// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_after_completion_hosted_confirmation.dart';
import './payment_links_post_request_body_after_completion_redirect.dart';
import './payment_links_post_request_body_after_completion_type.dart';

/// auto generated
/// Behavior after the purchase is complete.
class PaymentLinksPostRequestBodyAfterCompletion
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The hosted_confirmation property
  PaymentLinksPostRequestBodyAfterCompletionHostedConfirmation?
      hostedConfirmation;

  ///  The redirect property
  PaymentLinksPostRequestBodyAfterCompletionRedirect? redirect;

  ///  The type property
  PaymentLinksPostRequestBodyAfterCompletionType? type_;

  /// Instantiates a new [PaymentLinksPostRequestBodyAfterCompletion] and sets the default values.
  PaymentLinksPostRequestBodyAfterCompletion() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyAfterCompletion
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodyAfterCompletion();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['hosted_confirmation'] = (node) => hostedConfirmation =
        node.getObjectValue<
                PaymentLinksPostRequestBodyAfterCompletionHostedConfirmation>(
            PaymentLinksPostRequestBodyAfterCompletionHostedConfirmation
                .createFromDiscriminatorValue);
    deserializerMap['redirect'] = (node) => redirect =
        node.getObjectValue<PaymentLinksPostRequestBodyAfterCompletionRedirect>(
            PaymentLinksPostRequestBodyAfterCompletionRedirect
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentLinksPostRequestBodyAfterCompletionType>(
            (stringValue) => PaymentLinksPostRequestBodyAfterCompletionType
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
            PaymentLinksPostRequestBodyAfterCompletionHostedConfirmation>(
        'hosted_confirmation', hostedConfirmation);
    writer.writeObjectValue<PaymentLinksPostRequestBodyAfterCompletionRedirect>(
        'redirect', redirect);
    writer.writeEnumValue<PaymentLinksPostRequestBodyAfterCompletionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
