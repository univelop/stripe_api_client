// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_after_completion_type.dart';
import './payment_links_resource_completion_behavior_confirmation_page.dart';
import './payment_links_resource_completion_behavior_redirect.dart';

/// auto generated
class PaymentLinksResourceAfterCompletion
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The hosted_confirmation property
  PaymentLinksResourceCompletionBehaviorConfirmationPage? hostedConfirmation;

  ///  The redirect property
  PaymentLinksResourceCompletionBehaviorRedirect? redirect;

  ///  The specified behavior after the purchase is complete.
  PaymentLinksResourceAfterCompletionType? type_;

  /// Instantiates a new [PaymentLinksResourceAfterCompletion] and sets the default values.
  PaymentLinksResourceAfterCompletion() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceAfterCompletion createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceAfterCompletion();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['hosted_confirmation'] = (node) => hostedConfirmation = node
        .getObjectValue<PaymentLinksResourceCompletionBehaviorConfirmationPage>(
            PaymentLinksResourceCompletionBehaviorConfirmationPage
                .createFromDiscriminatorValue);
    deserializerMap['redirect'] = (node) => redirect =
        node.getObjectValue<PaymentLinksResourceCompletionBehaviorRedirect>(
            PaymentLinksResourceCompletionBehaviorRedirect
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentLinksResourceAfterCompletionType>(
            (stringValue) => PaymentLinksResourceAfterCompletionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentLinksResourceCompletionBehaviorConfirmationPage>(
        'hosted_confirmation', hostedConfirmation);
    writer.writeObjectValue<PaymentLinksResourceCompletionBehaviorRedirect>(
        'redirect', redirect);
    writer.writeEnumValue<PaymentLinksResourceAfterCompletionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
