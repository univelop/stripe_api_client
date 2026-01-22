// ignore_for_file: type=lint
/// auto generated
///  Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
enum PriceTiersMode {
  graduated('graduated'),
  volume('volume');

  const PriceTiersMode(this.value);
  final String value;
}
