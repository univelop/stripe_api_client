// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_nz_bank_account_member1_setup_future_usage.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccountMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccountMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The target_date property
  String? targetDate;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccountMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccountMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccountMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccountMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccountMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccountMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['target_date'] =
        (node) => targetDate = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccountMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeAdditionalData(additionalData);
  }
}
