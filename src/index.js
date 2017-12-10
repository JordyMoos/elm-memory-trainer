const Elm = require('./elm/Main.elm');

const config = {
  questions: [
    {
      image: 'https://pbs.twimg.com/profile_images/936256922092744705/uKXkS-Fd.jpg',
      answer: 'Donald Duck'
    },
    {
      image: 'https://pbs.twimg.com/profile_images/679603265080791040/EL7Ckgzu.png',
      answer: 'Katrien Duck'
    },
    {
      image: 'https://snm-nl-kids-ddbackend-production-production.s3.amazonaws.com/media/images/28/b4/28b43778-3dbc-4c4f-815d-a73015388008/03_kwek_k.png',
      answer: 'Kwik'
    },
    {
      image: 'https://pbs.twimg.com/profile_images/2448455639/p57mircyzt5durp8vvc6_400x400.gif',
      answer: 'Kwek'
    },
    {
      image: 'http://www.picgifs.com/disney-gifs/disney-gifs/huey-dewey-and-louie/disney-graphics-huey-dewey-and-louie-607235.gif',
      answer: 'Kwak'
    }
  ]
};

let app = Elm.Main.embed(document.getElementById('main'), config);