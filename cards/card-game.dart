void main() {
  var deck = new Deck();
  deck.shuffle();
  print(deck);
  print(deck.cardsWithSuit('Diamonds'));  
}

class Deck {
  List<Card> cards = [];
  
  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Clubs', 'Hearts', 'Diamonds', 'Spades'];
    
    for (var r in ranks) {
      for (var s in suits) {
        var card = new Card(r, s);
        this.cards.add(card);
      }
    }
  }
  
  printCards(){
    print(this.cards);
  }
  
  shuffle() {
    this.cards.shuffle();
  }
  
  deal() {
    
  }
  
  removeCard() {
    
  }
  
  cardsWithSuit(String suit){
    return this.cards.where((c) => c.suit == suit);
  }
  
  toString() {
    return cards.toString();
  }
}

class Card {
  String rank;
  String suit;
  
  Card(this.rank, this.suit);
  
  toString() {
    return '${this.rank} of ${this.suit}';
  }
}