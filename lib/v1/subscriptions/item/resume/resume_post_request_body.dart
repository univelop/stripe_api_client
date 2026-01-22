// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './resume_post_request_body_billing_cycle_anchor.dart';
import './resume_post_request_body_proration_behavior.dart';

/// auto generated
class ResumePostRequestBody implements Parsable {
  ///  The billing cycle anchor that applies when the subscription is resumed. Either `now` or `unchanged`. The default is `now`. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
  ResumePostRequestBodyBillingCycleAnchor? billingCycleAnchor;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) resulting from the `billing_cycle_anchor` being `unchanged`. When the `billing_cycle_anchor` is set to `now` (default value), no prorations are generated. If no value is passed, the default is `create_prorations`.
  ResumePostRequestBodyProrationBehavior? prorationBehavior;

  ///  If set, prorations will be calculated as though the subscription was resumed at the given time. This can be used to apply exactly the same prorations that were previewed with the [create preview](https://stripe.com/docs/api/invoices/create_preview) endpoint.
  int? prorationDate;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ResumePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ResumePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_cycle_anchor'] = (node) => billingCycleAnchor =
        node.getEnumValue<ResumePostRequestBodyBillingCycleAnchor>(
            (stringValue) => ResumePostRequestBodyBillingCycleAnchor.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['proration_behavior'] = (node) => prorationBehavior =
        node.getEnumValue<ResumePostRequestBodyProrationBehavior>(
            (stringValue) => ResumePostRequestBodyProrationBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['proration_date'] =
        (node) => prorationDate = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<ResumePostRequestBodyBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeEnumValue<ResumePostRequestBodyProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeIntValue('proration_date', prorationDate);
  }
}
