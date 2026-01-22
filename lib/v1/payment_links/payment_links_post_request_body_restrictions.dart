// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_restrictions_completed_sessions.dart';

/// auto generated
/// Settings that restrict the usage of a payment link.
class PaymentLinksPostRequestBodyRestrictions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The completed_sessions property
  PaymentLinksPostRequestBodyRestrictionsCompletedSessions? completedSessions;

  /// Instantiates a new [PaymentLinksPostRequestBodyRestrictions] and sets the default values.
  PaymentLinksPostRequestBodyRestrictions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyRestrictions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksPostRequestBodyRestrictions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['completed_sessions'] = (node) => completedSessions =
        node.getObjectValue<
                PaymentLinksPostRequestBodyRestrictionsCompletedSessions>(
            PaymentLinksPostRequestBodyRestrictionsCompletedSessions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentLinksPostRequestBodyRestrictionsCompletedSessions>(
        'completed_sessions', completedSessions);
    writer.writeAdditionalData(additionalData);
  }
}
