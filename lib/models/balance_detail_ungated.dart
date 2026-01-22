// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_amount.dart';

/// auto generated
class BalanceDetailUngated implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Funds that are available for use.
  Iterable<BalanceAmount>? available;

  ///  Funds that are pending
  Iterable<BalanceAmount>? pending;

  /// Instantiates a new [BalanceDetailUngated] and sets the default values.
  BalanceDetailUngated() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceDetailUngated createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BalanceDetailUngated();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['available'] = (node) => available =
        node.getCollectionOfObjectValues<BalanceAmount>(
            BalanceAmount.createFromDiscriminatorValue);
    deserializerMap['pending'] = (node) => pending =
        node.getCollectionOfObjectValues<BalanceAmount>(
            BalanceAmount.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<BalanceAmount>('available', available);
    writer.writeCollectionOfObjectValues<BalanceAmount>('pending', pending);
    writer.writeAdditionalData(additionalData);
  }
}
