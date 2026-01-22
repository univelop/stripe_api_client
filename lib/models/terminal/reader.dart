// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../terminal_reader_reader_resource_reader_action.dart';
import './reader_device_type.dart';
import './reader_location.dart';
import './reader_metadata.dart';
import './reader_object.dart';
import './reader_status.dart';

/// auto generated
/// A Reader represents a physical device for accepting payment details.Related guide: [Connecting to a reader](https://docs.stripe.com/terminal/payments/connect-reader)
class Reader implements AdditionalDataHolder, Parsable {
  ///  The most recent action performed by the reader.
  TerminalReaderReaderResourceReaderAction? action;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The current software version of the reader.
  String? deviceSwVersion;

  ///  Device type of the reader.
  ReaderDeviceType? deviceType;

  ///  Unique identifier for the object.
  String? id;

  ///  The local IP address of the reader.
  String? ipAddress;

  ///  Custom label given to the reader for easier identification.
  String? label;

  ///  The last time this reader reported to Stripe backend. Timestamp is measured in milliseconds since the Unix epoch. Unlike most other Stripe timestamp fields which use seconds, this field uses milliseconds.
  int? lastSeenAt;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The location identifier of the reader.
  ReaderLocation? location;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  ReaderMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  ReaderObject? object;

  ///  Serial number of the reader.
  String? serialNumber;

  ///  The networking status of the reader. We do not recommend using this field in flows that may block taking payments.
  ReaderStatus? status;

  /// Instantiates a new [Reader] and sets the default values.
  Reader() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Reader createFromDiscriminatorValue(ParseNode parseNode) {
    return Reader();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['action'] = (node) => action = node.getObjectValue<
            TerminalReaderReaderResourceReaderAction>(
        TerminalReaderReaderResourceReaderAction.createFromDiscriminatorValue);
    deserializerMap['device_sw_version'] =
        (node) => deviceSwVersion = node.getStringValue();
    deserializerMap['device_type'] = (node) => deviceType = node
        .getEnumValue<ReaderDeviceType>((stringValue) => ReaderDeviceType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['ip_address'] = (node) => ipAddress = node.getStringValue();
    deserializerMap['label'] = (node) => label = node.getStringValue();
    deserializerMap['last_seen_at'] = (node) => lastSeenAt = node.getIntValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['location'] = (node) => location =
        node.getObjectValue<ReaderLocation>(
            ReaderLocation.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ReaderMetadata>(
            ReaderMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ReaderObject>((stringValue) => ReaderObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['serial_number'] =
        (node) => serialNumber = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<ReaderStatus>((stringValue) => ReaderStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TerminalReaderReaderResourceReaderAction>(
        'action', action);
    writer.writeStringValue('device_sw_version', deviceSwVersion);
    writer.writeEnumValue<ReaderDeviceType>(
        'device_type', deviceType, (e) => e?.value);
    writer.writeStringValue('id', id);
    writer.writeStringValue('ip_address', ipAddress);
    writer.writeStringValue('label', label);
    writer.writeIntValue('last_seen_at', lastSeenAt);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<ReaderLocation>('location', location);
    writer.writeObjectValue<ReaderMetadata>('metadata', metadata);
    writer.writeEnumValue<ReaderObject>('object', object, (e) => e?.value);
    writer.writeStringValue('serial_number', serialNumber);
    writer.writeEnumValue<ReaderStatus>('status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
