import 'dart:math';

import 'package:english_words/english_words.dart';

import 'package:flutter/material.dart';

const _myListOfRandomColors = [
  Colors.red,
  Colors.blue,
  Colors.teal,
  Colors.yellow,
  Colors.amber,
  Colors.deepOrange,
  Colors.green,
  Colors.indigo,
  Colors.lime,
  Colors.pink,
  Colors.orange,
];

final _random = Random();

final wordPairIterator = generateWordPairs();

String generateRandomHeadline() {
  final artist = capitalizePair(wordPairIterator.first);

  switch (_random.nextInt(10)) {
    case 0:
      return '$artist says ${nouns[_random.nextInt(nouns.length)]}';
    case 1:
      return '$artist arrested due to ${wordPairIterator.first.join(' ')}';
    case 2:
      return '$artist releases ${capitalizePair(wordPairIterator.first)}';
    case 3:
      return '$artist talks about his ${nouns[_random.nextInt(nouns.length)]}';
    case 4:
      return '$artist talks about her ${nouns[_random.nextInt(nouns.length)]}';
    case 5:
      return '$artist talks about their ${nouns[_random.nextInt(nouns.length)]}';
    case 6:
      return '$artist says their music is inspired by ${wordPairIterator.first.join(' ')}';
    case 7:
      return '$artist says the world needs more ${nouns[_random.nextInt(nouns.length)]}';
    case 8:
      return '$artist calls their band ${adjectives[_random.nextInt(adjectives.length)]}';
    case 9:
      return '$artist finally ready to talk about ${nouns[_random.nextInt(nouns.length)]}';
  }

  assert(false, 'Failed to generate news headline');
  return 'Failed to generate news headline';
}

List<MaterialColor> getRandomColors(int amount) {
  return List<MaterialColor>.generate(amount, (index) {
    return _myListOfRandomColors[_random.nextInt(_myListOfRandomColors.length)];
  });
}

List<String> getRandomNames(int amount) {
  return wordPairIterator
      .take(amount)
      .map((pair) => capitalizePair(pair))
      .toList();
}

String capitalize(String word) {
  return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
}

String capitalizePair(WordPair pair) {
  return '${capitalize(pair.first)} ${capitalize(pair.second)}';
}
