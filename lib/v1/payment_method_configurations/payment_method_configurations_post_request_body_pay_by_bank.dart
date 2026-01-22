// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_configurations_post_request_body_pay_by_bank_display_preference.dart';

/// auto generated
/// Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
class PaymentMethodConfigurationsPostRequestBodyPayByBank
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  PaymentMethodConfigurationsPostRequestBodyPayByBankDisplayPreference?
      displayPreference;

  /// Instantiates a new [PaymentMethodConfigurationsPostRequestBodyPayByBank] and sets the default values.
  PaymentMethodConfigurationsPostRequestBodyPayByBank() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigurationsPostRequestBodyPayByBank
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigurationsPostRequestBodyPayByBank();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'display_preference'] = (node) => displayPreference = node.getObjectValue<
            PaymentMethodConfigurationsPostRequestBodyPayByBankDisplayPreference>(
        PaymentMethodConfigurationsPostRequestBodyPayByBankDisplayPreference
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyPayByBankDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
