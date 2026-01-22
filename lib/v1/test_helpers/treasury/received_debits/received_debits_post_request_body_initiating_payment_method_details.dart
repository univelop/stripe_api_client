// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './received_debits_post_request_body_initiating_payment_method_details_type.dart';
import './received_debits_post_request_body_initiating_payment_method_details_us_bank_account.dart';

/// auto generated
/// Initiating payment method details for the object.
class ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetailsType? type_;

  ///  The us_bank_account property
  ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount?
      usBankAccount;

  /// Instantiates a new [ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetails] and sets the default values.
  ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetailsType>(
        (stringValue) =>
            ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetailsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount>(
        ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
