// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transfer_reversal.dart';
import './transfer_reversals_object.dart';

/// auto generated
/// A list of reversals that have been applied to the transfer.
class TransferReversals implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Details about each object.
  Iterable<TransferReversal>? data;

  ///  True if this list has another page of items after this one that can be fetched.
  bool? hasMore;

  ///  String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
  TransferReversalsObject? object;

  ///  The URL where this list can be accessed.
  String? url;

  /// Instantiates a new [TransferReversals] and sets the default values.
  TransferReversals() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TransferReversals createFromDiscriminatorValue(ParseNode parseNode) {
    return TransferReversals();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data =
        node.getCollectionOfObjectValues<TransferReversal>(
            TransferReversal.createFromDiscriminatorValue);
    deserializerMap['has_more'] = (node) => hasMore = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TransferReversalsObject>((stringValue) =>
            TransferReversalsObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<TransferReversal>('data', data);
    writer.writeBoolValue('has_more', value: hasMore);
    writer.writeEnumValue<TransferReversalsObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
