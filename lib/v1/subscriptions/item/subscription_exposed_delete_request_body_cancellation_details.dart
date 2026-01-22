// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_delete_request_body_cancellation_details_comment.dart';
import './subscription_exposed_delete_request_body_cancellation_details_feedback.dart';

/// auto generated
/// Details about why this subscription was cancelled
class SubscriptionExposedDeleteRequestBodyCancellationDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The comment property
  SubscriptionExposedDeleteRequestBodyCancellationDetailsComment? comment;

  ///  The feedback property
  SubscriptionExposedDeleteRequestBodyCancellationDetailsFeedback? feedback;

  /// Instantiates a new [SubscriptionExposedDeleteRequestBodyCancellationDetails] and sets the default values.
  SubscriptionExposedDeleteRequestBodyCancellationDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedDeleteRequestBodyCancellationDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedDeleteRequestBodyCancellationDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['comment'] = (node) => comment = node.getObjectValue<
            SubscriptionExposedDeleteRequestBodyCancellationDetailsComment>(
        SubscriptionExposedDeleteRequestBodyCancellationDetailsComment
            .createFromDiscriminatorValue);
    deserializerMap['feedback'] = (node) => feedback = node.getEnumValue<
            SubscriptionExposedDeleteRequestBodyCancellationDetailsFeedback>(
        (stringValue) =>
            SubscriptionExposedDeleteRequestBodyCancellationDetailsFeedback
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionExposedDeleteRequestBodyCancellationDetailsComment>(
        'comment', comment);
    writer.writeEnumValue<
            SubscriptionExposedDeleteRequestBodyCancellationDetailsFeedback>(
        'feedback', feedback, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
