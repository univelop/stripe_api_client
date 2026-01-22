// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_acss_debit_member1_mandate_options_transaction_type.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The transaction_type property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptionsTransactionType?
      transactionType;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions] and sets the default values.
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'transaction_type'] = (node) => transactionType = node.getEnumValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptionsTransactionType>(
        (stringValue) =>
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptionsTransactionType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1MandateOptionsTransactionType>(
        'transaction_type', transactionType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
