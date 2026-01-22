// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './file_links.dart';
import './file_object.dart';
import './file_purpose.dart';

/// auto generated
/// This object represents files hosted on Stripe's servers. You can uploadfiles with the [create file](https://api.stripe.com#create_file) request(for example, when uploading dispute evidence). Stripe alsocreates files independently (for example, the results of a [Sigma scheduledquery](#scheduled_queries)).Related guide: [File upload guide](https://docs.stripe.com/file-upload)
class File implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The file expires and isn't available at this time in epoch seconds.
  int? expiresAt;

  ///  The suitable name for saving the file to a filesystem.
  String? filename;

  ///  Unique identifier for the object.
  String? id;

  ///  A list of [file links](https://api.stripe.com#file_links) that point at this file.
  FileLinks? links;

  ///  String representing the object's type. Objects of the same type share the same value.
  FileObject? object;

  ///  The [purpose](https://docs.stripe.com/file-upload#uploading-a-file) of the uploaded file.
  FilePurpose? purpose;

  ///  The size of the file object in bytes.
  int? size;

  ///  A suitable title for the document.
  String? title;

  ///  The returned file type (for example, `csv`, `pdf`, `jpg`, or `png`).
  String? type_;

  ///  Use your live secret API key to download the file from this URL.
  String? url;

  /// Instantiates a new [File] and sets the default values.
  File() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static File createFromDiscriminatorValue(ParseNode parseNode) {
    return File();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['filename'] = (node) => filename = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['links'] = (node) => links =
        node.getObjectValue<FileLinks>(FileLinks.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<FileObject>((stringValue) => FileObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['purpose'] = (node) => purpose =
        node.getEnumValue<FilePurpose>((stringValue) => FilePurpose.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['size'] = (node) => size = node.getIntValue();
    deserializerMap['title'] = (node) => title = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('filename', filename);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<FileLinks>('links', links);
    writer.writeEnumValue<FileObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<FilePurpose>('purpose', purpose, (e) => e?.value);
    writer.writeIntValue('size', size);
    writer.writeStringValue('title', title);
    writer.writeStringValue('type', type_);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
