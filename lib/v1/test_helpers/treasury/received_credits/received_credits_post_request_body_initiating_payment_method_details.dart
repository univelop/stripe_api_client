// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './received_credits_post_request_body_initiating_payment_method_details_type.dart';
import './received_credits_post_request_body_initiating_payment_method_details_us_bank_account.dart';

/// auto generated
/// Initiating payment method details for the object.
class ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsType? type_;

  ///  The us_bank_account property
  ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount?
      usBankAccount;

  /// Instantiates a new [ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetails] and sets the default values.
  ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsType>(
        (stringValue) =>
            ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount>(
        ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
