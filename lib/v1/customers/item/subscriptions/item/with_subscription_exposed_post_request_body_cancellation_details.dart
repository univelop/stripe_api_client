// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_cancellation_details_comment.dart';
import './with_subscription_exposed_post_request_body_cancellation_details_feedback.dart';

/// auto generated
/// Details about why this subscription was cancelled
class WithSubscriptionExposedPostRequestBodyCancellationDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The comment property
  WithSubscriptionExposedPostRequestBodyCancellationDetailsComment? comment;

  ///  The feedback property
  WithSubscriptionExposedPostRequestBodyCancellationDetailsFeedback? feedback;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyCancellationDetails] and sets the default values.
  WithSubscriptionExposedPostRequestBodyCancellationDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyCancellationDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyCancellationDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['comment'] = (node) => comment = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyCancellationDetailsComment>(
        WithSubscriptionExposedPostRequestBodyCancellationDetailsComment
            .createFromDiscriminatorValue);
    deserializerMap['feedback'] = (node) => feedback = node.getEnumValue<
            WithSubscriptionExposedPostRequestBodyCancellationDetailsFeedback>(
        (stringValue) =>
            WithSubscriptionExposedPostRequestBodyCancellationDetailsFeedback
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
            WithSubscriptionExposedPostRequestBodyCancellationDetailsComment>(
        'comment', comment);
    writer.writeEnumValue<
            WithSubscriptionExposedPostRequestBodyCancellationDetailsFeedback>(
        'feedback', feedback, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
