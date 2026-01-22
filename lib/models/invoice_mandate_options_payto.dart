// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_mandate_options_payto_amount_type.dart';
import './invoice_mandate_options_payto_purpose.dart';

/// auto generated
class InvoiceMandateOptionsPayto implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The maximum amount that can be collected in a single invoice. If you don't specify a maximum, then there is no limit.
  int? amount;

  ///  Only `maximum` is supported.
  InvoiceMandateOptionsPaytoAmountType? amountType;

  ///  The purpose for which payments are made. Has a default value based on your merchant category code.
  InvoiceMandateOptionsPaytoPurpose? purpose;

  /// Instantiates a new [InvoiceMandateOptionsPayto] and sets the default values.
  InvoiceMandateOptionsPayto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceMandateOptionsPayto createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoiceMandateOptionsPayto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_type'] = (node) => amountType =
        node.getEnumValue<InvoiceMandateOptionsPaytoAmountType>((stringValue) =>
            InvoiceMandateOptionsPaytoAmountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['purpose'] = (node) => purpose =
        node.getEnumValue<InvoiceMandateOptionsPaytoPurpose>((stringValue) =>
            InvoiceMandateOptionsPaytoPurpose.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeEnumValue<InvoiceMandateOptionsPaytoAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeEnumValue<InvoiceMandateOptionsPaytoPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
