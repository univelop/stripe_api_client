// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './gelato_session_document_options.dart';
import './gelato_session_email_options.dart';
import './gelato_session_id_number_options.dart';
import './gelato_session_matching_options.dart';
import './gelato_session_phone_options.dart';

/// auto generated
class GelatoVerificationSessionOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The document property
  GelatoSessionDocumentOptions? document;

  ///  The email property
  GelatoSessionEmailOptions? email;

  ///  The id_number property
  GelatoSessionIdNumberOptions? idNumber;

  ///  The matching property
  GelatoSessionMatchingOptions? matching;

  ///  The phone property
  GelatoSessionPhoneOptions? phone;

  /// Instantiates a new [GelatoVerificationSessionOptions] and sets the default values.
  GelatoVerificationSessionOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoVerificationSessionOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return GelatoVerificationSessionOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['document'] = (node) => document =
        node.getObjectValue<GelatoSessionDocumentOptions>(
            GelatoSessionDocumentOptions.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email =
        node.getObjectValue<GelatoSessionEmailOptions>(
            GelatoSessionEmailOptions.createFromDiscriminatorValue);
    deserializerMap['id_number'] = (node) => idNumber =
        node.getObjectValue<GelatoSessionIdNumberOptions>(
            GelatoSessionIdNumberOptions.createFromDiscriminatorValue);
    deserializerMap['matching'] = (node) => matching =
        node.getObjectValue<GelatoSessionMatchingOptions>(
            GelatoSessionMatchingOptions.createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone =
        node.getObjectValue<GelatoSessionPhoneOptions>(
            GelatoSessionPhoneOptions.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<GelatoSessionDocumentOptions>('document', document);
    writer.writeObjectValue<GelatoSessionEmailOptions>('email', email);
    writer.writeObjectValue<GelatoSessionIdNumberOptions>(
        'id_number', idNumber);
    writer.writeObjectValue<GelatoSessionMatchingOptions>('matching', matching);
    writer.writeObjectValue<GelatoSessionPhoneOptions>('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
