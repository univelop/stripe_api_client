// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_name_collection_business.dart';
import './sessions_post_request_body_name_collection_individual.dart';

/// auto generated
/// Controls name collection settings for the session.You can configure Checkout to collect your customers' business names, individual names, or both. Each name field can be either required or optional.If a [Customer](https://docs.stripe.com/api/customers) is created or provided, the names can be saved to the Customer object as well.
class SessionsPostRequestBodyNameCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The business property
  SessionsPostRequestBodyNameCollectionBusiness? business;

  ///  The individual property
  SessionsPostRequestBodyNameCollectionIndividual? individual;

  /// Instantiates a new [SessionsPostRequestBodyNameCollection] and sets the default values.
  SessionsPostRequestBodyNameCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyNameCollection createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyNameCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['business'] = (node) => business =
        node.getObjectValue<SessionsPostRequestBodyNameCollectionBusiness>(
            SessionsPostRequestBodyNameCollectionBusiness
                .createFromDiscriminatorValue);
    deserializerMap['individual'] = (node) => individual =
        node.getObjectValue<SessionsPostRequestBodyNameCollectionIndividual>(
            SessionsPostRequestBodyNameCollectionIndividual
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SessionsPostRequestBodyNameCollectionBusiness>(
        'business', business);
    writer.writeObjectValue<SessionsPostRequestBodyNameCollectionIndividual>(
        'individual', individual);
    writer.writeAdditionalData(additionalData);
  }
}
