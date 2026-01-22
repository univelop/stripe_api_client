// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_connections_resource_transaction_refresh_status.dart';

/// auto generated
class BankConnectionsResourceTransactionRefresh
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Unique identifier for the object.
  String? id;

  ///  The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
  int? lastAttemptedAt;

  ///  Time at which the next transaction refresh can be initiated. This value will be `null` when `status` is `pending`. Measured in seconds since the Unix epoch.
  int? nextRefreshAvailableAt;

  ///  The status of the last refresh attempt.
  BankConnectionsResourceTransactionRefreshStatus? status;

  /// Instantiates a new [BankConnectionsResourceTransactionRefresh] and sets the default values.
  BankConnectionsResourceTransactionRefresh() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankConnectionsResourceTransactionRefresh createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BankConnectionsResourceTransactionRefresh();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['last_attempted_at'] =
        (node) => lastAttemptedAt = node.getIntValue();
    deserializerMap['next_refresh_available_at'] =
        (node) => nextRefreshAvailableAt = node.getIntValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<BankConnectionsResourceTransactionRefreshStatus>(
            (stringValue) => BankConnectionsResourceTransactionRefreshStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeIntValue('last_attempted_at', lastAttemptedAt);
    writer.writeIntValue('next_refresh_available_at', nextRefreshAvailableAt);
    writer.writeEnumValue<BankConnectionsResourceTransactionRefreshStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
