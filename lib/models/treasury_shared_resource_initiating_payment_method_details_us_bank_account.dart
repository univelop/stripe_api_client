// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Bank name.
  String? bankName;

  ///  The last four digits of the bank account number.
  String? last4;

  ///  The routing number for the bank account.
  String? routingNumber;

  /// Instantiates a new [TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount] and sets the default values.
  TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
