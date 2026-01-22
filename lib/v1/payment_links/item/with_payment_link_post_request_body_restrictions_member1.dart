// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_restrictions_member1_completed_sessions.dart';

/// auto generated
class WithPaymentLinkPostRequestBodyRestrictionsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The completed_sessions property
  WithPaymentLinkPostRequestBodyRestrictionsMember1CompletedSessions?
      completedSessions;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyRestrictionsMember1] and sets the default values.
  WithPaymentLinkPostRequestBodyRestrictionsMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyRestrictionsMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyRestrictionsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'completed_sessions'] = (node) => completedSessions = node.getObjectValue<
            WithPaymentLinkPostRequestBodyRestrictionsMember1CompletedSessions>(
        WithPaymentLinkPostRequestBodyRestrictionsMember1CompletedSessions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodyRestrictionsMember1CompletedSessions>(
        'completed_sessions', completedSessions);
    writer.writeAdditionalData(additionalData);
  }
}
