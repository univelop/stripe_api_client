// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_intent_data_capture_method.dart';
import './sessions_post_request_body_payment_intent_data_metadata.dart';
import './sessions_post_request_body_payment_intent_data_setup_future_usage.dart';
import './sessions_post_request_body_payment_intent_data_shipping.dart';
import './sessions_post_request_body_payment_intent_data_transfer_data.dart';

/// auto generated
/// A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
class SessionsPostRequestBodyPaymentIntentData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The application_fee_amount property
  int? applicationFeeAmount;

  ///  The capture_method property
  SessionsPostRequestBodyPaymentIntentDataCaptureMethod? captureMethod;

  ///  The description property
  String? description;

  ///  The metadata property
  SessionsPostRequestBodyPaymentIntentDataMetadata? metadata;

  ///  The on_behalf_of property
  String? onBehalfOf;

  ///  The receipt_email property
  String? receiptEmail;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentIntentDataSetupFutureUsage? setupFutureUsage;

  ///  The shipping property
  SessionsPostRequestBodyPaymentIntentDataShipping? shipping;

  ///  The statement_descriptor property
  String? statementDescriptor;

  ///  The statement_descriptor_suffix property
  String? statementDescriptorSuffix;

  ///  The transfer_data property
  SessionsPostRequestBodyPaymentIntentDataTransferData? transferData;

  ///  The transfer_group property
  String? transferGroup;

  /// Instantiates a new [SessionsPostRequestBodyPaymentIntentData] and sets the default values.
  SessionsPostRequestBodyPaymentIntentData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentIntentData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentIntentData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['capture_method'] = (node) => captureMethod = node
        .getEnumValue<SessionsPostRequestBodyPaymentIntentDataCaptureMethod>(
            (stringValue) =>
                SessionsPostRequestBodyPaymentIntentDataCaptureMethod.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SessionsPostRequestBodyPaymentIntentDataMetadata>(
            SessionsPostRequestBodyPaymentIntentDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['receipt_email'] =
        (node) => receiptEmail = node.getStringValue();
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage = node
        .getEnumValue<SessionsPostRequestBodyPaymentIntentDataSetupFutureUsage>(
            (stringValue) =>
                SessionsPostRequestBodyPaymentIntentDataSetupFutureUsage.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<SessionsPostRequestBodyPaymentIntentDataShipping>(
            SessionsPostRequestBodyPaymentIntentDataShipping
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['statement_descriptor_suffix'] =
        (node) => statementDescriptorSuffix = node.getStringValue();
    deserializerMap['transfer_data'] = (node) => transferData = node
        .getObjectValue<SessionsPostRequestBodyPaymentIntentDataTransferData>(
            SessionsPostRequestBodyPaymentIntentDataTransferData
                .createFromDiscriminatorValue);
    deserializerMap['transfer_group'] =
        (node) => transferGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer
        .writeEnumValue<SessionsPostRequestBodyPaymentIntentDataCaptureMethod>(
            'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentIntentDataMetadata>(
        'metadata', metadata);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeStringValue('receipt_email', receiptEmail);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentIntentDataSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentIntentDataShipping>(
        'shipping', shipping);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue(
        'statement_descriptor_suffix', statementDescriptorSuffix);
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentIntentDataTransferData>(
            'transfer_data', transferData);
    writer.writeStringValue('transfer_group', transferGroup);
    writer.writeAdditionalData(additionalData);
  }
}
