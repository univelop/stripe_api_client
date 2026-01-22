// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_transfers_post_request_body_destination_payment_method_options_us_bank_account.dart';

/// auto generated
/// Hash describing payment method configuration details.
class OutboundTransfersPostRequestBodyDestinationPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The us_bank_account property
  OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount?
      usBankAccount;

  /// Instantiates a new [OutboundTransfersPostRequestBodyDestinationPaymentMethodOptions] and sets the default values.
  OutboundTransfersPostRequestBodyDestinationPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundTransfersPostRequestBodyDestinationPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundTransfersPostRequestBodyDestinationPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount>(
        OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
