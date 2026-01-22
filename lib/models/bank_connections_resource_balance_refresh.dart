// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_connections_resource_balance_refresh_status.dart';

/// auto generated
class BankConnectionsResourceBalanceRefresh
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
  int? lastAttemptedAt;

  ///  Time at which the next balance refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
  int? nextRefreshAvailableAt;

  ///  The status of the last refresh attempt.
  BankConnectionsResourceBalanceRefreshStatus? status;

  /// Instantiates a new [BankConnectionsResourceBalanceRefresh] and sets the default values.
  BankConnectionsResourceBalanceRefresh() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankConnectionsResourceBalanceRefresh createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BankConnectionsResourceBalanceRefresh();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['last_attempted_at'] =
        (node) => lastAttemptedAt = node.getIntValue();
    deserializerMap['next_refresh_available_at'] =
        (node) => nextRefreshAvailableAt = node.getIntValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<BankConnectionsResourceBalanceRefreshStatus>(
            (stringValue) => BankConnectionsResourceBalanceRefreshStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('last_attempted_at', lastAttemptedAt);
    writer.writeIntValue('next_refresh_available_at', nextRefreshAvailableAt);
    writer.writeEnumValue<BankConnectionsResourceBalanceRefreshStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
