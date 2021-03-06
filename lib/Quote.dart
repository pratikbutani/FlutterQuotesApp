class Quote {
  int quoteId;
  String quoteText;
  String quoteAuthor;

  Quote({this.quoteId, this.quoteText, this.quoteAuthor});

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(
      quoteId: json['data']['id'],
      quoteText: json['data']['quote'],
      quoteAuthor: json['data']['date'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': quoteId,
      'quote_text': quoteText,
      'quote_author': quoteAuthor,
    };
  }

  Quote.fromMap(Map<String, dynamic> map) {
    quoteId = map['id'];
    quoteText = map['quote_text'];
    quoteAuthor = map['quote_author'];
  }
}
