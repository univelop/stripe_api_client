// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_payment_intent_data_capture_method.dart';
import './payment_links_post_request_body_payment_intent_data_metadata.dart';
import './payment_links_post_request_body_payment_intent_data_setup_future_usage.dart';

/// auto generated
/// A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
class PaymentLinksPostRequestBodyPaymentIntentData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  PaymentLinksPostRequestBodyPaymentIntentDataCaptureMethod? captureMethod;

  ///  The description property
  String? description;

  ///  The metadata property
  PaymentLinksPostRequestBodyPaymentIntentDataMetadata? metadata;

  ///  The setup_future_usage property
  PaymentLinksPostRequestBodyPaymentIntentDataSetupFutureUsage?
      setupFutureUsage;

  ///  The statement_descriptor property
  String? statementDescriptor;

  ///  The statement_descriptor_suffix property
  String? statementDescriptorSuffix;

  ///  The transfer_group property
  String? transferGroup;

  /// Instantiates a new [PaymentLinksPostRequestBodyPaymentIntentData] and sets the default values.
  PaymentLinksPostRequestBodyPaymentIntentData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyPaymentIntentData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodyPaymentIntentData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<
                PaymentLinksPostRequestBodyPaymentIntentDataCaptureMethod>(
            (stringValue) =>
                PaymentLinksPostRequestBodyPaymentIntentDataCaptureMethod.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node
        .getObjectValue<PaymentLinksPostRequestBodyPaymentIntentDataMetadata>(
            PaymentLinksPostRequestBodyPaymentIntentDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<
                PaymentLinksPostRequestBodyPaymentIntentDataSetupFutureUsage>(
            (stringValue) =>
                PaymentLinksPostRequestBodyPaymentIntentDataSetupFutureUsage
                    .values
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
    writer.writeEnumValue<
            PaymentLinksPostRequestBodyPaymentIntentDataCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer
        .writeObjectValue<PaymentLinksPostRequestBodyPaymentIntentDataMetadata>(
            'metadata', metadata);
    writer.writeEnumValue<
            PaymentLinksPostRequestBodyPaymentIntentDataSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue(
        'statement_descriptor_suffix', statementDescriptorSuffix);
    writer.writeStringValue('transfer_group', transferGroup);
    writer.writeAdditionalData(additionalData);
  }
}
