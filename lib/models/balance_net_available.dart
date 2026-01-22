// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_amount_by_source_type.dart';

/// auto generated
class BalanceNetAvailable implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Net balance amount, subtracting fees from platform-set pricing.
  int? amount;

  ///  ID of the external account for this net balance (not expandable).
  String? destination;

  ///  The source_types property
  BalanceAmountBySourceType? sourceTypes;

  /// Instantiates a new [BalanceNetAvailable] and sets the default values.
  BalanceNetAvailable() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceNetAvailable createFromDiscriminatorValue(ParseNode parseNode) {
    return BalanceNetAvailable();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['destination'] =
        (node) => destination = node.getStringValue();
    deserializerMap['source_types'] = (node) => sourceTypes =
        node.getObjectValue<BalanceAmountBySourceType>(
            BalanceAmountBySourceType.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('destination', destination);
    writer.writeObjectValue<BalanceAmountBySourceType>(
        'source_types', sourceTypes);
    writer.writeAdditionalData(additionalData);
  }
}
