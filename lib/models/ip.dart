
class Ip{
  String ip;
  String city;
  String region;
  String codPostale;

  Ip({required this.ip, required this.city, 
  required this.region,
  required this.codPostale
  });

  @override
  String toString() {
    return "ip:${this.ip}, city: ${this.city}, region: ${this.region}, codPostale: ${this.codPostale}";
  }
}