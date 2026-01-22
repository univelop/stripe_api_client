// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_payment_intent_data_description.dart';
import './with_payment_link_post_request_body_payment_intent_data_statement_descriptor.dart';
import './with_payment_link_post_request_body_payment_intent_data_statement_descriptor_suffix.dart';
import './with_payment_link_post_request_body_payment_intent_data_transfer_group.dart';

/// auto generated
/// A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
class WithPaymentLinkPostRequestBodyPaymentIntentData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The description property
  WithPaymentLinkPostRequestBodyPaymentIntentDataDescription? description;

  ///  The metadata property
  String? metadata;

  ///  The statement_descriptor property
  WithPaymentLinkPostRequestBodyPaymentIntentDataStatementDescriptor?
      statementDescriptor;

  ///  The statement_descriptor_suffix property
  WithPaymentLinkPostRequestBodyPaymentIntentDataStatementDescriptorSuffix?
      statementDescriptorSuffix;

  ///  The transfer_group property
  WithPaymentLinkPostRequestBodyPaymentIntentDataTransferGroup? transferGroup;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyPaymentIntentData] and sets the default values.
  WithPaymentLinkPostRequestBodyPaymentIntentData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyPaymentIntentData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyPaymentIntentData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] = (node) => description =
        node.getObjectValue<
                WithPaymentLinkPostRequestBodyPaymentIntentDataDescription>(
            WithPaymentLinkPostRequestBodyPaymentIntentDataDescription
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['statement_descriptor'] = (node) => statementDescriptor =
        node.getObjectValue<
                WithPaymentLinkPostRequestBodyPaymentIntentDataStatementDescriptor>(
            WithPaymentLinkPostRequestBodyPaymentIntentDataStatementDescriptor
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor_suffix'] = (node) =>
        statementDescriptorSuffix = node.getObjectValue<
                WithPaymentLinkPostRequestBodyPaymentIntentDataStatementDescriptorSuffix>(
            WithPaymentLinkPostRequestBodyPaymentIntentDataStatementDescriptorSuffix
                .createFromDiscriminatorValue);
    deserializerMap['transfer_group'] = (node) => transferGroup =
        node.getObjectValue<
                WithPaymentLinkPostRequestBodyPaymentIntentDataTransferGroup>(
            WithPaymentLinkPostRequestBodyPaymentIntentDataTransferGroup
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyPaymentIntentDataDescription>(
        'description', description);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyPaymentIntentDataStatementDescriptor>(
        'statement_descriptor', statementDescriptor);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyPaymentIntentDataStatementDescriptorSuffix>(
        'statement_descriptor_suffix', statementDescriptorSuffix);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyPaymentIntentDataTransferGroup>(
        'transfer_group', transferGroup);
    writer.writeAdditionalData(additionalData);
  }
}
