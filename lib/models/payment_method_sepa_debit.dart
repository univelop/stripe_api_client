// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sepa_debit_generated_from.dart';

/// auto generated
class PaymentMethodSepaDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Bank code of bank associated with the bank account.
  String? bankCode;

  ///  Branch code of bank associated with the bank account.
  String? branchCode;

  ///  Two-letter ISO code representing the country the bank account is located in.
  String? country;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  Information about the object that generated this PaymentMethod.
  SepaDebitGeneratedFrom? generatedFrom;

  ///  Last four characters of the IBAN.
  String? last4;

  /// Instantiates a new [PaymentMethodSepaDebit] and sets the default values.
  PaymentMethodSepaDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodSepaDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodSepaDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_code'] = (node) => bankCode = node.getStringValue();
    deserializerMap['branch_code'] =
        (node) => branchCode = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['generated_from'] = (node) => generatedFrom =
        node.getObjectValue<SepaDebitGeneratedFrom>(
            SepaDebitGeneratedFrom.createFromDiscriminatorValue);
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bank_code', bankCode);
    writer.writeStringValue('branch_code', branchCode);
    writer.writeStringValue('country', country);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeObjectValue<SepaDebitGeneratedFrom>(
        'generated_from', generatedFrom);
    writer.writeStringValue('last4', last4);
    writer.writeAdditionalData(additionalData);
  }
}
