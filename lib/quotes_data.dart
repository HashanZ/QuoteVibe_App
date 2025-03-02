/// Data model for storing quote information
class Quote {
  final String id; // Unique ID
  final String text; // quote text
  final String author; // Author name
  final String category; // Category
  final String details; // Context about the quote
  final String authorBio; // author biography
  final String? year; // year of origin
  final String imagePath; // Path to author image

  const Quote({
    required this.id,
    required this.text,
    required this.author,
    required this.category,
    required this.details,
    required this.authorBio,
    this.year,
    required this.imagePath,
  });
}

/// Predefined list of quotes
final List<Quote> quotes = [
  const Quote(
    id: '1',
    text: 'Life is a flower of which love is the honey.',
    author: 'Victor Hugo',
    category: 'Love',
    details: 'From the novel "Les Misérables"',
    authorBio: 'French poet, novelist, and dramatist of the Romantic movement',
    year: '1862',
    imagePath: 'assets/images/authors/Victor_Hugo.png',
  ),
  const Quote(
    id: '2',
    text:
        'You may not be her first, her last, or her only. But when you love her, you’ll be her last everything.',
    author: 'Bob Marley',
    category: 'Love',
    details: 'From personal writings',
    authorBio: 'Jamaican singer-songwriter and reggae icon',
    year: '1978',
    imagePath: 'assets/images/authors/bob-marley.jpg',
  ),
  const Quote(
    id: '3',
    text:
        'My bounty is as boundless as the sea, my love as deep; the more I give to thee, the more I have, for both are infinite.',
    author: 'William Shakespeare',
    category: 'Love',
    details: 'From "Romeo and Juliet" (Act 2, Scene 2)',
    authorBio:
        'English playwright, widely regarded as greatest writer in English language',
    year: '1597',
    imagePath: 'assets/images/authors/william_shakespeare.jpg',
  ),
  const Quote(
    id: '4',
    text:
        'All, everything that I understand, I understand only because I love.',
    author: 'Leo Tolstoy',
    category: 'Love',
    details: 'From "Anna Karenina"',
    authorBio: 'Russian writer regarded as one of greatest authors of all time',
    year: '1877',
    imagePath: 'assets/images/authors/leo_tolstoy.jpg',
  ),
  const Quote(
    id: '5',
    text: 'The only way to do great work is to love what you do.',
    author: 'Steve Jobs',
    category: 'Motivational',
    details: 'From 2005 Stanford Commencement Address',
    authorBio:
        'Co-founder of Apple Inc., pioneer of personal computer revolution',
    year: '2005',
    imagePath: 'assets/images/authors/steve_jobs.jpg',
  ),
  const Quote(
    id: '6',
    text:
        'Success is not final, failure is not fatal: It is the courage to continue that counts.',
    author: 'Winston Churchill',
    category: 'Motivational',
    details: 'From a WWII-era speech',
    authorBio: 'British Prime Minister during World War II',
    year: '1941',
    imagePath: 'assets/images/authors/winston_churchill.jpeg',
  ),
  const Quote(
    id: '7',
    text: 'It always seems impossible until it\'s done.',
    author: 'Nelson Mandela',
    category: 'Motivational',
    details: 'From a 1994 speech',
    authorBio:
        'South African anti-apartheid revolutionary and former President',
    year: '1994',
    imagePath: 'assets/images/authors/nelson_mandela.jpg',
  ),
  const Quote(
    id: '8',
    text:
        'Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.',
    author: 'Thomas Edison',
    category: 'Motivational',
    details: 'From a 1910 interview',
    authorBio: 'American inventor and businessman, developed the light bulb',
    year: '1910',
    imagePath: 'assets/images/authors/thomas_edison.jpg',
  ),
  const Quote(
    id: '9',
    text:
        'In the end, it\'s not the years in your life that count. It\'s the life in your years.',
    author: 'Abraham Lincoln',
    category: 'Life',
    details: 'From a letter to a friend',
    authorBio: '16th President of the United States',
    year: '1860',
    imagePath: 'assets/images/authors/abraham_lincoln.jpg',
  ),
  const Quote(
    id: '10',
    text:
        'Life is like riding a bicycle. To keep your balance, you must keep moving.',
    author: 'Albert Einstein',
    category: 'Life',
    details: 'From a letter to his son Eduard',
    authorBio: 'Theoretical physicist, developed theory of relativity',
    year: '1930',
    imagePath: 'assets/images/authors/albert_einstein.jpg',
  ),
  const Quote(
    id: '11',
    text: 'The purpose of our lives is to be happy.',
    author: 'Dalai Lama',
    category: 'Life',
    details: 'From a public teaching session',
    authorBio: 'Spiritual leader of Tibetan Buddhism',
    year: '2001',
    imagePath: 'assets/images/authors/dalai_lama.jpg',
  ),
  const Quote(
    id: '12',
    text: 'Life is what happens when you\'re busy making other plans.',
    author: 'John Lennon',
    category: 'Life',
    details: 'From the song "Beautiful Boy (Darling Boy)"',
    authorBio: 'English musician and member of The Beatles',
    year: '1980',
    imagePath: 'assets/images/authors/john_lennon.jpg',
  ),
  const Quote(
    id: '13',
    text:
        'I told my psychiatrist that everyone hates me. He said I was being ridiculous - everyone hasn\'t met me yet.',
    author: 'Rodney Dangerfield',
    category: 'Funny',
    details: 'From his stand-up comedy routine',
    authorBio: 'American stand-up comedian and actor',
    year: '1980',
    imagePath: 'assets/images/authors/rodney_dangerfield.jpg',
  ),
  const Quote(
    id: '14',
    text:
        'I\'m not afraid of death; I just don\'t want to be there when it happens.',
    author: 'Woody Allen',
    category: 'Funny',
    details: 'From his book "Without Feathers"',
    authorBio: 'American filmmaker, writer, and comedian',
    year: '1975',
    imagePath: 'assets/images/authors/woody_allen.jpg',
  ),
  const Quote(
    id: '15',
    text:
        'I always arrive late at the office, but I make up for it by leaving early.',
    author: 'Charles Lamb',
    category: 'Funny',
    details: 'From his essays',
    authorBio: 'English essayist and poet',
    year: '1820',
    imagePath: 'assets/images/authors/charles_lamb.jpg',
  ),
  const Quote(
    id: '16',
    text:
        'I always wanted to be somebody, but now I realize I should have been more specific.',
    author: 'Lily Tomlin',
    category: 'Funny',
    details: 'From her stand-up comedy routine',
    authorBio: 'American actress, comedian, and writer',
    year: '1977',
    imagePath: 'assets/images/authors/lily_tomlin.jpg',
  ),
  const Quote(
    id: '17',
    text:
        'Education is the most powerful weapon which you can use to change the world.',
    author: 'Nelson Mandela',
    category: 'Education',
    details: 'From a 2003 speech',
    authorBio:
        'South African anti-apartheid revolutionary and former President',
    year: '2003',
    imagePath: 'assets/images/authors/nelson_mandela.jpg',
  ),
  const Quote(
    id: '18',
    text: 'The roots of education are bitter, but the fruit is sweet.',
    author: 'Aristotle',
    category: 'Education',
    details: 'From his teachings',
    authorBio: 'Ancient Greek philosopher and polymath',
    year: '350 BCE',
    imagePath: 'assets/images/authors/aristotle.jpg',
  ),
  const Quote(
    id: '19',
    text:
        'The function of education is to teach one to think intensively and to think critically. Intelligence plus character - that is the goal of true education.',
    author: 'Martin Luther King Jr.',
    category: 'Education',
    details: 'From "The Purpose of Education"',
    authorBio: 'American civil rights leader and Nobel Peace Prize winner',
    year: '1947',
    imagePath: 'assets/images/authors/martin_luther_king_jr.jpg',
  ),
  const Quote(
    id: '20',
    text: 'Education is not the filling of a pail, but the lighting of a fire.',
    author: 'William Butler Yeats',
    category: 'Education',
    details: 'From his writings on education',
    authorBio: 'Irish poet and Nobel Prize winner in Literature',
    year: '1923',
    imagePath: 'assets/images/authors/william_butler_yeats.jpg',
  ),
  const Quote(
    id: '21',
    text: 'Knowing yourself is the beginning of all wisdom.',
    author: 'Aristotle',
    category: 'Wisdom',
    details: 'From his teachings',
    authorBio: 'Ancient Greek philosopher and polymath',
    year: '350 BCE',
    imagePath: 'assets/images/authors/aristotle.jpg',
  ),
  const Quote(
    id: '22',
    text:
        'The fool doth think he is wise, but the wise man knows himself to be a fool.',
    author: 'William Shakespeare',
    category: 'Wisdom',
    details: 'From "As You Like It" (Act 5, Scene 1)',
    authorBio:
        'English playwright, widely regarded as greatest writer in English language',
    year: '1599',
    imagePath: 'assets/images/authors/william_shakespeare.jpg',
  ),
  const Quote(
    id: '23',
    text:
        'Wisdom is not a product of schooling but of the lifelong attempt to acquire it.',
    author: 'Albert Einstein',
    category: 'Wisdom',
    details: 'From a 1951 letter',
    authorBio: 'Theoretical physicist, developed theory of relativity',
    year: '1951',
    imagePath: 'assets/images/authors/albert_einstein.jpg',
  ),
  const Quote(
    id: '24',
    text: 'The wisest mind has something yet to learn.',
    author: 'George Santayana',
    category: 'Wisdom',
    details: 'From his book "The Life of Reason"',
    authorBio: 'Spanish-American philosopher, essayist, and poet',
    year: '1905',
    imagePath: 'assets/images/authors/george_santayana.jpg',
  ),
  const Quote(
    id: '25',
    text:
        'Success is stumbling from failure to failure with no loss of enthusiasm.',
    author: 'Winston Churchill',
    category: 'Success',
    details: 'From a 1941 speech',
    authorBio: 'British Prime Minister during World War II',
    year: '1941',
    imagePath: 'assets/images/authors/winston_churchill.jpeg',
  ),
  const Quote(
    id: '26',
    text: 'Success is the progressive realization of a worthy goal or ideal.',
    author: 'Earl Nightingale',
    category: 'Success',
    details: 'From his recording "The Strangest Secret"',
    authorBio: 'American radio speaker and author',
    year: '1956',
    imagePath: 'assets/images/authors/earl_nightingale.png',
  ),
  const Quote(
    id: '27',
    text:
        'Success is getting what you want, happiness is wanting what you get.',
    author: 'Dale Carnegie',
    category: 'Success',
    details: 'From his book "How to Win Friends and Influence People"',
    authorBio: 'American writer and lecturer',
    year: '1936',
    imagePath: 'assets/images/authors/dale_carnegie.jpg',
  ),
  const Quote(
    id: '28',
    text:
        'Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.',
    author: 'Albert Schweitzer',
    category: 'Success',
    details: 'From his writings on life philosophy',
    authorBio: 'French-German theologian, philosopher, and physician',
    year: '1952',
    imagePath: 'assets/images/authors/albert_schweitzer.jpg',
  ),
];
