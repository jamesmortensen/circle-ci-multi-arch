const artifactArch = process.argv[2];

const data = require('./' + artifactArch);
console.log(data.items);
const url = data.items[0].url;

console.log(url);
