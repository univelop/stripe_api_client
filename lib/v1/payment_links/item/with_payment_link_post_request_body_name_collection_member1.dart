// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_name_collection_member1_business.dart';
import './with_payment_link_post_request_body_name_collection_member1_individual.dart';

/// auto generated
class WithPaymentLinkPostRequestBodyNameCollectionMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The business property
  WithPaymentLinkPostRequestBodyNameCollectionMember1Business? business;

  ///  The individual property
  WithPaymentLinkPostRequestBodyNameCollectionMember1Individual? individual;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyNameCollectionMember1] and sets the default values.
  WithPaymentLinkPostRequestBodyNameCollectionMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyNameCollectionMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyNameCollectionMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['business'] = (node) => business = node.getObjectValue<
            WithPaymentLinkPostRequestBodyNameCollectionMember1Business>(
        WithPaymentLinkPostRequestBodyNameCollectionMember1Business
            .createFromDiscriminatorValue);
    deserializerMap['individual'] = (node) => individual = node.getObjectValue<
            WithPaymentLinkPostRequestBodyNameCollectionMember1Individual>(
        WithPaymentLinkPostRequestBodyNameCollectionMember1Individual
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyNameCollectionMember1Business>(
        'business', business);
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyNameCollectionMember1Individual>(
        'individual', individual);
    writer.writeAdditionalData(additionalData);
  }
}
