// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transaction_entries_object.dart';
import './transaction_entry.dart';

/// auto generated
/// A list of TransactionEntries that are part of this Transaction. This cannot be expanded in any list endpoints.
class TransactionEntries implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Details about each object.
  Iterable<TransactionEntry>? data;

  ///  True if this list has another page of items after this one that can be fetched.
  bool? hasMore;

  ///  String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
  TransactionEntriesObject? object;

  ///  The URL where this list can be accessed.
  String? url;

  /// Instantiates a new [TransactionEntries] and sets the default values.
  TransactionEntries() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TransactionEntries createFromDiscriminatorValue(ParseNode parseNode) {
    return TransactionEntries();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data =
        node.getCollectionOfObjectValues<TransactionEntry>(
            TransactionEntry.createFromDiscriminatorValue);
    deserializerMap['has_more'] = (node) => hasMore = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TransactionEntriesObject>((stringValue) =>
            TransactionEntriesObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<TransactionEntry>('data', data);
    writer.writeBoolValue('has_more', value: hasMore);
    writer.writeEnumValue<TransactionEntriesObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
