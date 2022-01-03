import 'package:wallet_clone/model/card_model.dart';
import 'base_provider.dart';

class CardsProvider extends BaseProvider {
  final List<Cards> _cardList = [
    Cards(
        logo: 'images/Mastercard-Logo 1.png',
        name: 'MasterCard',
        cardNumber: '** 8001',
        amount: '\$4,100.00'),
    Cards(
        logo: 'images/Visa_Inc._logo 1.png',
        name: 'VisaPremium',
        cardNumber: '** 5923',
        amount: '\$2,39.00'),
  ];
  List<Cards> get cardList => _cardList;
}
