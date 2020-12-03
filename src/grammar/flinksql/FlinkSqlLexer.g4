lexer grammar FlinkSqlLexer;

// SKIP

SPACE:                               [ \t\r\n]+    -> channel(HIDDEN);
COMMENT_INPUT:                       '/*' .*? '*/' -> channel(HIDDEN);
LINE_COMMENT:                        (
                                       ('-- ' | '#') ~[\r\n]* ('\r'? '\n' | EOF)
                                       | '--' ('\r'? '\n' | EOF)
                                     ) -> channel(HIDDEN);


// Common Keywords

SELECT:                       'SELECT';
FROM:                         'FROM';
ADD:                          'ADD';
AS:                           'AS';
ALL:                          'ALL';
ANY:                          'ANY';
DISTINCT:                     'DISTINCT';
WHERE:                        'WHERE';
GROUP:                        'GROUP';
BY:                           'BY';
GROUPING:                     'GROUPING';
SETS:                         'SETS';
CUBE:                         'CUBE';
ROLLUP:                       'ROLLUP';
ORDER:                        'ORDER';
HAVING:                       'HAVING';
LIMIT:                        'LIMIT';
AT:                           'AT';
OR:                           'OR';
AND:                          'AND';
IN:                           'IN';
NOT:                          'NOT';
NO:                           'NO';
EXISTS:                       'EXISTS';
BETWEEN:                      'BETWEEN';
LIKE:                         'LIKE';
RLIKE:                        'RLIKE';
IS:                           'IS';
TRUE:                         'TRUE';
FALSE:                        'FALSE';
NULLS:                        'NULLS';
ASC:                          'ASC';
DESC:                         'DESC';
FOR:                          'FOR';
INTERVAL:                     'INTERVAL';
CASE:                         'CASE';
WHEN:                         'WHEN';
THEN:                         'THEN';
ELSE:                         'ELSE';
END:                          'END';
JOIN:                         'JOIN';
CROSS:                        'CROSS';
OUTER:                        'OUTER';
INNER:                        'INNER';
LEFT:                         'LEFT';
SEMI:                         'SEMI';
RIGHT:                        'RIGHT';
FULL:                         'FULL';
NATURAL:                      'NATURAL';
ON:                           'ON';
PIVOT:                        'PIVOT';
LATERAL:                      'LATERAL';
WINDOW:                       'WINDOW';
OVER:                         'OVER';
PARTITION:                    'PARTITION';
RANGE:                        'RANGE';
ROWS:                         'ROWS';
UNBOUNDED:                    'UNBOUNDED';
PRECEDING:                    'PRECEDING';
FOLLOWING:                    'FOLLOWING';
CURRENT:                      'CURRENT';
FIRST:                        'FIRST';
AFTER:                        'AFTER';
LAST:                         'LAST';
WITH:                         'WITH';
VALUES:                       'VALUES';
CREATE:                       'CREATE';
TABLE:                        'TABLE';
DIRECTORY:                    'DIRECTORY';
VIEW:                         'VIEW';
REPLACE:                      'REPLACE';
INSERT:                       'INSERT';
DELETE:                       'DELETE';
INTO:                         'INTO';
DESCRIBE:                     'DESCRIBE';
EXPLAIN:                      'EXPLAIN';
FORMAT:                       'FORMAT';
LOGICAL:                      'LOGICAL';
CODEGEN:                      'CODEGEN';
COST:                         'COST';
CAST:                         'CAST';
SHOW:                         'SHOW';
TABLES:                       'TABLES';
COLUMNS:                      'COLUMNS';
COLUMN:                       'COLUMN';
USE:                          'USE';
PARTITIONS:                   'PARTITIONS';
FUNCTIONS:                    'FUNCTIONS';
DROP:                         'DROP';
UNION:                        'UNION';
EXCEPT:                       'EXCEPT';
SETMINUS:                     'SETMINUS';
INTERSECT:                    'INTERSECT';
TO:                           'TO';
TABLESAMPLE:                  'TABLESAMPLE';
STRATIFY:                     'STRATIFY';
ALTER:                        'ALTER';
RENAME:                       'RENAME';
STRUCT:                       'STRUCT';
COMMENT:                      'COMMENT';
SET:                          'SET';
RESET:                        'RESET';
DATA:                         'DATA';
START:                        'START';
TRANSACTION:                  'TRANSACTION';
COMMIT:                       'COMMIT';
ROLLBACK:                     'ROLLBACK';
MACRO:                        'MACRO';
IGNORE:                       'IGNORE';
BOTH:                         'BOTH';
LEADING:                      'LEADING';
TRAILING:                     'TRAILING';
IF:                           'IF';
POSITION:                     'POSITION';
EXTRACT:                      'EXTRACT';
EQ:                           'EQ';
NSEQ:                         'NSEQ';
NEQ:                          'NEQ';
NEQJ:                         'NEQJ';
LT:                           'LT';
LTE:                          'LTE';
GT:                           'GT';
GTE:                          'GTE';
PLUS:                         'PLUS';
MINUS:                        'MINUS';
ASTERISK:                     'ASTERISK';
SLASH:                        'SLASH';
PERCENT:                      'PERCENT';
DIV:                          'DIV';
TILDE:                        'TILDE';
AMPERSAND:                    'AMPERSAND';
PIPE:                         'PIPE';
CONCAT_PIPE:                  'CONCAT_PIPE';
HAT:                          'HAT';
PERCENTLIT:                   'PERCENTLIT';
BUCKET:                       'BUCKET';
OUT:                          'OUT';
OF:                           'OF';
SORT:                         'SORT';
CLUSTER:                      'CLUSTER';
DISTRIBUTE:                   'DISTRIBUTE';
OVERWRITE:                    'OVERWRITE';
TRANSFORM:                    'TRANSFORM';
REDUCE:                       'REDUCE';
USING:                        'USING';
SERDE:                        'SERDE';
SERDEPROPERTIES:              'SERDEPROPERTIES';
RECORDREADER:                 'RECORDREADER';
RECORDWRITER:                 'RECORDWRITER';
DELIMITED:                    'DELIMITED';
FIELDS:                       'FIELDS';
TERMINATED:                   'TERMINATED';
COLLECTION:                   'COLLECTION';
ITEMS:                        'ITEMS';
KEYS:                         'KEYS';
ESCAPED:                      'ESCAPED';
LINES:                        'LINES';
SEPARATED:                    'SEPARATED';
FUNCTION:                     'FUNCTION';
EXTENDED:                     'EXTENDED';
REFRESH:                      'REFRESH';
CLEAR:                        'CLEAR';
CACHE:                        'CACHE';
UNCACHE:                      'UNCACHE';
LAZY:                         'LAZY';
FORMATTED:                    'FORMATTED';
GLOBAL:                       'GLOBAL';
TEMPORARY:                    'TEMPORARY';
OPTIONS:                      'OPTIONS';
UNSET:                        'UNSET';
TBLPROPERTIES:                'TBLPROPERTIES';
DBPROPERTIES:                 'DBPROPERTIES';
BUCKETS:                      'BUCKETS';
SKEWED:                       'SKEWED';
STORED:                       'STORED';
DIRECTORIES:                  'DIRECTORIES';
LOCATION:                     'LOCATION';
EXCHANGE:                     'EXCHANGE';
ARCHIVE:                      'ARCHIVE';
UNARCHIVE:                    'UNARCHIVE';
FILEFORMAT:                   'FILEFORMAT';
TOUCH:                        'TOUCH';
COMPACT:                      'COMPACT';
CONCATENATE:                  'CONCATENATE';
CHANGE:                       'CHANGE';
CASCADE:                      'CASCADE';
CONSTRAINT:                   'CONSTRAINT';
RESTRICT:                     'RESTRICT';
CLUSTERED:                    'CLUSTERED';
SORTED:                       'SORTED';
PURGE:                        'PURGE';
INPUTFORMAT:                  'INPUTFORMAT';
OUTPUTFORMAT:                 'OUTPUTFORMAT';
DATABASE:                     'DATABASE';
DATABASES:                    'DATABASES';
DFS:                          'DFS';
TRUNCATE:                     'TRUNCATE';
ANALYZE:                      'ANALYZE';
COMPUTE:                      'COMPUTE';
LIST:                         'LIST';
STATISTICS:                   'STATISTICS';
PARTITIONED:                  'PARTITIONED';
EXTERNAL:                     'EXTERNAL';
DEFINED:                      'DEFINED';
REVOKE:                       'REVOKE';
GRANT:                        'GRANT';
LOCK:                         'LOCK';
UNLOCK:                       'UNLOCK';
MSCK:                         'MSCK';
REPAIR:                       'REPAIR';
RECOVER:                      'RECOVER';
EXPORT:                       'EXPORT';
IMPORT:                       'IMPORT';
LOAD:                         'LOAD';
ROLE:                         'ROLE';
ROLES:                        'ROLES';
COMPACTIONS:                  'COMPACTIONS';
PRINCIPALS:                   'PRINCIPALS';
TRANSACTIONS:                 'TRANSACTIONS';
INDEX:                        'INDEX';
INDEXES:                      'INDEXES';
LOCKS:                        'LOCKS';
OPTION:                       'OPTION';
ANTI:                         'ANTI';
LOCAL:                        'LOCAL';
INPATH:                       'INPATH';
WATERMARK:                    'WATERMARK';
UNNEST:                       'UNNEST';
MATCH_RECOGNIZE:              'MATCH_RECOGNIZE';
MEASURES:                     'MEASURES';
ONE:                          'ONE';
PER:                          'PER';
MATCH:                        'MATCH';
SKIP1:                        'SKIP1';
NEXT:                         'NEXT';
PAST:                         'PAST';
PATTERN:                      'PATTERN';
WITHIN:                       'WITHIN';
DEFINE:                       'DEFINE';
WS:                           'WS';
SYSTEM:                       'SYSTEM';
INCLUDING:                    'INCLUDING';
EXCLUDING:                    'EXCLUDING';
CONSTRAINTS:                  'CONSTRAINTS';
OVERWRITING:                  'OVERWRITING';
GENERATED:                    'GENERATED';
CATALOG:                      'CATALOG';
LANGUAGE:                     'LANGUAGE';
CATALOGS:                     'CATALOGS';
VIEWS:                        'VIEWS';
PRIMARY:                      'PRIMARY';
KEY:                          'KEY';
PERIOD:                       'PERIOD';
SYSTEM_TIME:                  'SYSTEM_TIME';


// DATA TYPE Keywords

STRING:                       'STRING';
ARRAY:                        'ARRAY';
MAP:                          'MAP';
CHAR:                         'CHAR';
VARCHAR:                      'VARCHAR';
BINARY:                       'BINARY';
VARBINARY:                    'VARBINARY';
BYTES:                        'BYTES';
DECIMAL:                      'DECIMAL';
TINYINT:                      'TINYINT';
SMALLINT:                     'SMALLINT';
INT:                          'INT';
BIGINT:                       'BIGINT';
FLOAT:                        'FLOAT';
DOUBLE:                       'DOUBLE';
DATE:                         'DATE';
TIME:                         'TIME';
TIMESTAMP:                    'TIMESTAMP';
MULTISET:                     'MULTISET';
BOOLEAN:                      'BOOLEAN';
RAW:                          'RAW';
ROW:                          'ROW';
NULL:                         'NULL';
DATETIME:                     'DATETIME';  // 数栈自定义类型



// Operators. Comparation

EQUAL_SYMBOL:                        '=';
GREATER_SYMBOL:                      '>';
LESS_SYMBOL:                         '<';
EXCLAMATION_SYMBOL:                  '!';


// Operators. Bit

BIT_NOT_OP:                          '~';
BIT_OR_OP:                           '|';
BIT_AND_OP:                          '&';
BIT_XOR_OP:                          '^';


// Constructors symbols

DOT:                                 '.';
LS_BRACKET:                          '[';
RS_BRACKET:                          ']';
LR_BRACKET:                          '(';
RR_BRACKET:                          ')';
COMMA:                               ',';
SEMICOLON:                           ';';
AT_SIGN:                             '@';
SINGLE_QUOTE_SYMB:                   '\'';
DOUBLE_QUOTE_SYMB:                   '"';
REVERSE_QUOTE_SYMB:                  '`';
COLON_SYMB:                          ':';
ASTERISK_SIGN:                       '*';
UNDERLINE_SIGN:                      '_';
HYPNEN_SIGN:                         '-';
ADD_SIGN:                            '+';
PENCENT_SIGN:                        '%';
DOUBLE_VERTICAL_SIGN:                '||';
DOUBLE_HYPNEN_SIGN:                  '--';
SLASH_SIGN:                          '/';
DOT_ID:                              '.' ID_LITERAL_FRAG;
PLUS_DOT_ID:                          (':' | '.') PLUS_ID_LITERAL;
STRING_LITERAL:                      DQUOTA_STRING | SQUOTA_STRING | BQUOTA_STRING;
DIG_LITERAL:                         DEC_DIGIT+;
REAL_LITERAL:                        (DEC_DIGIT+)? '.' DEC_DIGIT+
                                     | DEC_DIGIT+ '.' EXPONENT_NUM_PART
                                     | (DEC_DIGIT+)? '.' (DEC_DIGIT+ EXPONENT_NUM_PART)
                                     | DEC_DIGIT+ EXPONENT_NUM_PART;
BIT_STRING:                          BIT_STRING_L;
ID_LITERAL:                          ID_LITERAL_FRAG;
PLUS_ID_LITERAL:                     PLUS_ID_LITERAL_FRAG;

fragment EXPONENT_NUM_PART:          'E' [-+]? DEC_DIGIT+;
fragment ID_LITERAL_FRAG:            [A-Z_0-9a-z]*?[A-Z_a-z]+?[A-Z_0-9a-z]*;
fragment PLUS_ID_LITERAL_FRAG:       ('a'..'z' | '0'..'9' | '_' | '*' | '@' | '#' | '^' | '$' | '%' | '&')*?[A-Z_a-z]+?('a'..'z' | '0'..'9' | '_' | '*' | '@' | '#' | '^' | '$' | '%' | '&')*;
fragment DEC_DIGIT:                  [0-9];
fragment DEC_LETTER:                 [A-Za-z];
fragment DQUOTA_STRING:              '"' ( '\\'. | '""' | ~('"'| '\\') )* '"';
fragment SQUOTA_STRING:              '\'' ('\\'. | '\'\'' | ~('\'' | '\\'))* '\'';
fragment BIT_STRING_L:               'B' '\'' [01]+ '\'';
fragment BQUOTA_STRING:              '`' ( '\\'. | '``' | ~('`'|'\\'))* '`';