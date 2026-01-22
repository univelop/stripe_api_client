// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_us_bank_account_blocked.dart';

/// auto generated
class PaymentMethodUsBankAccountStatusDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The blocked property
  PaymentMethodUsBankAccountBlocked? blocked;

  /// Instantiates a new [PaymentMethodUsBankAccountStatusDetails] and sets the default values.
  PaymentMethodUsBankAccountStatusDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodUsBankAccountStatusDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodUsBankAccountStatusDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['blocked'] = (node) => blocked =
        node.getObjectValue<PaymentMethodUsBankAccountBlocked>(
            PaymentMethodUsBankAccountBlocked.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodUsBankAccountBlocked>(
        'blocked', blocked);
    writer.writeAdditionalData(additionalData);
  }
}
