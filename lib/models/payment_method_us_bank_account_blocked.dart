// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_us_bank_account_blocked_network_code.dart';
import './payment_method_us_bank_account_blocked_reason.dart';

/// auto generated
class PaymentMethodUsBankAccountBlocked
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ACH network code that resulted in this block.
  PaymentMethodUsBankAccountBlockedNetworkCode? networkCode;

  ///  The reason why this PaymentMethod's fingerprint has been blocked
  PaymentMethodUsBankAccountBlockedReason? reason;

  /// Instantiates a new [PaymentMethodUsBankAccountBlocked] and sets the default values.
  PaymentMethodUsBankAccountBlocked() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodUsBankAccountBlocked createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodUsBankAccountBlocked();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['network_code'] = (node) => networkCode =
        node.getEnumValue<PaymentMethodUsBankAccountBlockedNetworkCode>(
            (stringValue) => PaymentMethodUsBankAccountBlockedNetworkCode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reason'] = (node) => reason =
        node.getEnumValue<PaymentMethodUsBankAccountBlockedReason>(
            (stringValue) => PaymentMethodUsBankAccountBlockedReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodUsBankAccountBlockedNetworkCode>(
        'network_code', networkCode, (e) => e?.value);
    writer.writeEnumValue<PaymentMethodUsBankAccountBlockedReason>(
        'reason', reason, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
