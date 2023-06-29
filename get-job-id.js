const jobName = process.argv[2];

const data = require('./workflow.json');
console.log(data.items);
const jobid = data.items.filter((item) => item.name === jobName).reduce((acc, item) => {
    acc = item.job_number;
    return acc;
},[]);

console.log('jobid = ', jobid);
