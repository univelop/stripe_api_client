// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_capability_future_requirements.dart';
import './account_capability_requirements.dart';
import './capability_account.dart';
import './capability_object.dart';
import './capability_status.dart';

/// auto generated
/// This is an object representing a capability for a Stripe account.Related guide: [Account capabilities](https://docs.stripe.com/connect/account-capabilities)
class Capability implements AdditionalDataHolder, Parsable {
  ///  The account for which the capability enables functionality.
  CapabilityAccount? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The future_requirements property
  AccountCapabilityFutureRequirements? futureRequirements;

  ///  The identifier for the capability.
  String? id;

  ///  String representing the object's type. Objects of the same type share the same value.
  CapabilityObject? object;

  ///  Whether the capability has been requested.
  bool? requested;

  ///  Time at which the capability was requested. Measured in seconds since the Unix epoch.
  int? requestedAt;

  ///  The requirements property
  AccountCapabilityRequirements? requirements;

  ///  The status of the capability.
  CapabilityStatus? status;

  /// Instantiates a new [Capability] and sets the default values.
  Capability() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Capability createFromDiscriminatorValue(ParseNode parseNode) {
    return Capability();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account =
        node.getObjectValue<CapabilityAccount>(
            CapabilityAccount.createFromDiscriminatorValue);
    deserializerMap['future_requirements'] = (node) => futureRequirements =
        node.getObjectValue<AccountCapabilityFutureRequirements>(
            AccountCapabilityFutureRequirements.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<CapabilityObject>((stringValue) => CapabilityObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['requested'] = (node) => requested = node.getBoolValue();
    deserializerMap['requested_at'] =
        (node) => requestedAt = node.getIntValue();
    deserializerMap['requirements'] = (node) => requirements =
        node.getObjectValue<AccountCapabilityRequirements>(
            AccountCapabilityRequirements.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status = node
        .getEnumValue<CapabilityStatus>((stringValue) => CapabilityStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CapabilityAccount>('account', account);
    writer.writeObjectValue<AccountCapabilityFutureRequirements>(
        'future_requirements', futureRequirements);
    writer.writeStringValue('id', id);
    writer.writeEnumValue<CapabilityObject>('object', object, (e) => e?.value);
    writer.writeBoolValue('requested', value: requested);
    writer.writeIntValue('requested_at', requestedAt);
    writer.writeObjectValue<AccountCapabilityRequirements>(
        'requirements', requirements);
    writer.writeEnumValue<CapabilityStatus>('status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
