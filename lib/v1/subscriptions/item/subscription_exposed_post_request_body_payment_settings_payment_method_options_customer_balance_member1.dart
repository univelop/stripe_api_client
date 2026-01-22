// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_customer_balance_member1_bank_transfer.dart';

/// auto generated
class SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_transfer property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer?
      bankTransfer;

  ///  The funding_type property
  String? fundingType;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1] and sets the default values.
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'bank_transfer'] = (node) => bankTransfer = node.getObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer>(
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['funding_type'] =
        (node) => fundingType = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransfer>(
        'bank_transfer', bankTransfer);
    writer.writeStringValue('funding_type', fundingType);
    writer.writeAdditionalData(additionalData);
  }
}
