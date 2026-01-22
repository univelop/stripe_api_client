// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_acceptance_type.dart';
import './offline_acceptance.dart';
import './online_acceptance.dart';

/// auto generated
class CustomerAcceptance implements AdditionalDataHolder, Parsable {
  ///  The time that the customer accepts the mandate.
  int? acceptedAt;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The offline property
  OfflineAcceptance? offline;

  ///  The online property
  OnlineAcceptance? online;

  ///  The mandate includes the type of customer acceptance information, such as: `online` or `offline`.
  CustomerAcceptanceType? type_;

  /// Instantiates a new [CustomerAcceptance] and sets the default values.
  CustomerAcceptance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerAcceptance createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerAcceptance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['accepted_at'] = (node) => acceptedAt = node.getIntValue();
    deserializerMap['offline'] = (node) => offline =
        node.getObjectValue<OfflineAcceptance>(
            OfflineAcceptance.createFromDiscriminatorValue);
    deserializerMap['online'] = (node) => online =
        node.getObjectValue<OnlineAcceptance>(
            OnlineAcceptance.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CustomerAcceptanceType>((stringValue) =>
            CustomerAcceptanceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('accepted_at', acceptedAt);
    writer.writeObjectValue<OfflineAcceptance>('offline', offline);
    writer.writeObjectValue<OnlineAcceptance>('online', online);
    writer.writeEnumValue<CustomerAcceptanceType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
