// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_errors.dart';

/// auto generated
/// An error response from the Stripe API
class Error extends ApiException implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The error property
  ApiErrors? errorProp;

  /// Instantiates a new [Error] and sets the default values.
  Error({
    super.message,
    super.statusCode,
    super.responseHeaders,
    super.innerExceptions,
    required this.additionalData,
    this.errorProp,
  });

  /// Creates a copy of the object.
  @override
  Error copyWith(
      {int? statusCode,
      String? message,
      Map<String, List<String>>? responseHeaders,
      Iterable<Object?>? innerExceptions,
      Map<String, Object?>? additionalData,
      ApiErrors? errorProp}) {
    return Error(
      message: message ?? this.message,
      statusCode: statusCode ?? this.statusCode,
      responseHeaders: responseHeaders ?? this.responseHeaders,
      innerExceptions: innerExceptions ?? this.innerExceptions,
      additionalData: additionalData ?? this.additionalData,
      errorProp: errorProp ?? this.errorProp,
    );
  }

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Error createFromDiscriminatorValue(ParseNode parseNode) {
    return Error(additionalData: {});
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['error'] = (node) => errorProp =
        node.getObjectValue<ApiErrors>(ApiErrors.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ApiErrors>('error', errorProp);
    writer.writeAdditionalData(additionalData);
  }
}
