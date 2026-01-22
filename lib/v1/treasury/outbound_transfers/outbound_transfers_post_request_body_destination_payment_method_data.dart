// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_transfers_post_request_body_destination_payment_method_data_type.dart';

/// auto generated
/// Hash used to generate the PaymentMethod to be used for this OutboundTransfer. Exclusive with `destination_payment_method`.
class OutboundTransfersPostRequestBodyDestinationPaymentMethodData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_account property
  String? financialAccount;

  ///  The type property
  OutboundTransfersPostRequestBodyDestinationPaymentMethodDataType? type_;

  /// Instantiates a new [OutboundTransfersPostRequestBodyDestinationPaymentMethodData] and sets the default values.
  OutboundTransfersPostRequestBodyDestinationPaymentMethodData()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundTransfersPostRequestBodyDestinationPaymentMethodData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundTransfersPostRequestBodyDestinationPaymentMethodData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            OutboundTransfersPostRequestBodyDestinationPaymentMethodDataType>(
        (stringValue) =>
            OutboundTransfersPostRequestBodyDestinationPaymentMethodDataType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeEnumValue<
            OutboundTransfersPostRequestBodyDestinationPaymentMethodDataType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
