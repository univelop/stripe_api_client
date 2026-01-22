// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_payments_post_request_body_destination_payment_method_options_us_bank_account.dart';

/// auto generated
/// Payment method-specific configuration for this OutboundPayment.
class OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The us_bank_account property
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount?
      usBankAccount;

  /// Instantiates a new [OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptions] and sets the default values.
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount>(
        OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
