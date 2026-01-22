// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The country property
  String? country;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer] and sets the default values.
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1BankTransferEuBankTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['country'] = (node) => country = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('country', country);
    writer.writeAdditionalData(additionalData);
  }
}
