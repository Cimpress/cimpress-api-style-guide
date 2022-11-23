const util = require('util');
const exec = util.promisify(require('child_process').exec);


const myArgs = process.argv.slice(2);
const swaggerUrl = myArgs[0];
const ourputFileName =  myArgs[1];
async function executeSpactral() {
  try{
    const { stdout} = await exec(`spectral lint -f json ${swaggerUrl} --ruleset spectral/cimpress.all.yaml > ${ourputFileName}`);
  }catch (error) {
    console.log(error);
  }
}


executeSpactral()