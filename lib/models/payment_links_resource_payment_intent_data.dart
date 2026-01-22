// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_payment_intent_data_capture_method.dart';
import './payment_links_resource_payment_intent_data_metadata.dart';
import './payment_links_resource_payment_intent_data_setup_future_usage.dart';

/// auto generated
class PaymentLinksResourcePaymentIntentData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Indicates when the funds will be captured from the customer's account.
  PaymentLinksResourcePaymentIntentDataCaptureMethod? captureMethod;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will set metadata on [Payment Intents](https://docs.stripe.com/api/payment_intents) generated from this payment link.
  PaymentLinksResourcePaymentIntentDataMetadata? metadata;

  ///  Indicates that you intend to make future payments with the payment method collected during checkout.
  PaymentLinksResourcePaymentIntentDataSetupFutureUsage? setupFutureUsage;

  ///  For a non-card payment, information about the charge that appears on the customer's statement when this payment succeeds in creating a charge.
  String? statementDescriptor;

  ///  For a card payment, information about the charge that appears on the customer's statement when this payment succeeds in creating a charge. Concatenated with the account's statement descriptor prefix to form the complete statement descriptor.
  String? statementDescriptorSuffix;

  ///  A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://docs.stripe.com/connect/separate-charges-and-transfers) for details.
  String? transferGroup;

  /// Instantiates a new [PaymentLinksResourcePaymentIntentData] and sets the default values.
  PaymentLinksResourcePaymentIntentData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourcePaymentIntentData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourcePaymentIntentData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<PaymentLinksResourcePaymentIntentDataCaptureMethod>(
            (stringValue) => PaymentLinksResourcePaymentIntentDataCaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentLinksResourcePaymentIntentDataMetadata>(
            PaymentLinksResourcePaymentIntentDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage = node
        .getEnumValue<PaymentLinksResourcePaymentIntentDataSetupFutureUsage>(
            (stringValue) =>
                PaymentLinksResourcePaymentIntentDataSetupFutureUsage.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['statement_descriptor_suffix'] =
        (node) => statementDescriptorSuffix = node.getStringValue();
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentLinksResourcePaymentIntentDataCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<PaymentLinksResourcePaymentIntentDataMetadata>(
        'metadata', metadata);
    writer
        .writeEnumValue<PaymentLinksResourcePaymentIntentDataSetupFutureUsage>(
            'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue(
        'statement_descriptor_suffix', statementDescriptorSuffix);
    writer.writeStringValue('transfer_group', transferGroup);
    writer.writeAdditionalData(additionalData);
  }
}
