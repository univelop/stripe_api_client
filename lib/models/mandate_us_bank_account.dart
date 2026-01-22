// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './mandate_us_bank_account_collection_method.dart';

/// auto generated
class MandateUsBankAccount implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Mandate collection method
  MandateUsBankAccountCollectionMethod? collectionMethod;

  /// Instantiates a new [MandateUsBankAccount] and sets the default values.
  MandateUsBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MandateUsBankAccount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MandateUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<MandateUsBankAccountCollectionMethod>((stringValue) =>
            MandateUsBankAccountCollectionMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<MandateUsBankAccountCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
