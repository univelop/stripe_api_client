// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './deleted_payment_source_object.dart';

/// auto generated
class DeletedPaymentSource implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
  String? currency;

  ///  Always true for a deleted object
  bool? deleted;

  ///  Unique identifier for the object.
  String? id;

  ///  String representing the object's type. Objects of the same type share the same value.
  DeletedPaymentSourceObject? object;

  /// Instantiates a new [DeletedPaymentSource] and sets the default values.
  DeletedPaymentSource() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DeletedPaymentSource createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DeletedPaymentSource();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['deleted'] = (node) => deleted = node.getBoolValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<DeletedPaymentSourceObject>((stringValue) =>
            DeletedPaymentSourceObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('currency', currency);
    writer.writeBoolValue('deleted', value: deleted);
    writer.writeStringValue('id', id);
    writer.writeEnumValue<DeletedPaymentSourceObject>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
