// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './file_link_file.dart';
import './file_link_metadata.dart';
import './file_link_object.dart';

/// auto generated
/// To share the contents of a `File` object with non-Stripe users, you cancreate a `FileLink`. `FileLink`s contain a URL that you can use toretrieve the contents of the file without authentication.
class FileLink implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Returns if the link is already expired.
  bool? expired;

  ///  Time that the link expires.
  int? expiresAt;

  ///  The file object this link points to.
  FileLinkFile? file;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  FileLinkMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  FileLinkObject? object;

  ///  The publicly accessible URL to download the file.
  String? url;

  /// Instantiates a new [FileLink] and sets the default values.
  FileLink() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FileLink createFromDiscriminatorValue(ParseNode parseNode) {
    return FileLink();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['expired'] = (node) => expired = node.getBoolValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['file'] = (node) => file =
        node.getObjectValue<FileLinkFile>(
            FileLinkFile.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<FileLinkMetadata>(
            FileLinkMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<FileLinkObject>((stringValue) => FileLinkObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeBoolValue('expired', value: expired);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeObjectValue<FileLinkFile>('file', file);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<FileLinkMetadata>('metadata', metadata);
    writer.writeEnumValue<FileLinkObject>('object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
