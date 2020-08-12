var fs = require( 'fs' );
var buf = new Buffer( 0x100 );

console.log( 'before openning a file' );
fs.open( 'package.json', 'r', function( error, fd ) {
    if( error ){
        console.log( error );
        return false;
    }
    
    console.log( 'file was opened' );

    fs.read( fd, buf, 0, buf.length, 0, function( error, data ){
        if( error ){
            console.log( error );
            return false;
        }
        console.log( 'buf', buf );
        console.log( 'buf.toString():', buf.toString() );
    });
} );






