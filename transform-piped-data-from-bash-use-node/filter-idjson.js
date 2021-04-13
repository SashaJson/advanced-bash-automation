#!/usr/bin/env node

const {Transform} = require('stream');

class FilterLogs extends Transform {
  _transform(chunk, encoding, callback) {
    try {
      let jsonChunk = chunk.toString()
        .split('\n')
        .reduce((aggr, line) => {
          if (line) {
            let json = JSON.parse(line);
            if (json.level === 'error') {
              aggr.push(JSON.stringify(json));
          }
        }
        return aggr;
      }, [])
      .join('\n')

    if (jsonChunk) {
      this.push(jsonChunk + '\n');
    }
    callback();	    
    } 
    catch(err) {
      callback(err);  
    }	  
  }
}

process.on('uncaughtException', err => {
  process.stderr.write(`Uncaught exception: ${err.message}\n`);
  process.exit(1);
});

process.stdin
  .pipe(new FilterLogs())
  .pipe(process.stdout);
