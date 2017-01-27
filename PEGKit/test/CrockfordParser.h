#import <PEGKit/PKParser.h>

enum {
    CROCKFORD_TOKEN_KIND_OPEN_CURLY = 14,
    CROCKFORD_TOKEN_KIND_GE_SYM = 15,
    CROCKFORD_TOKEN_KIND_DOUBLE_AMPERSAND = 16,
    CROCKFORD_TOKEN_KIND_FOR = 17,
    CROCKFORD_TOKEN_KIND_BREAK = 18,
    CROCKFORD_TOKEN_KIND_CLOSE_CURLY = 19,
    CROCKFORD_TOKEN_KIND_RETURN = 20,
    CROCKFORD_TOKEN_KIND_PLUS_EQUALS = 21,
    CROCKFORD_TOKEN_KIND_FUNCTION = 22,
    CROCKFORD_TOKEN_KIND_IF = 23,
    CROCKFORD_TOKEN_KIND_NEW = 24,
    CROCKFORD_TOKEN_KIND_ELSE = 25,
    CROCKFORD_TOKEN_KIND_BANG = 26,
    CROCKFORD_TOKEN_KIND_FINALLY = 27,
    CROCKFORD_TOKEN_KIND_COLON = 28,
    CROCKFORD_TOKEN_KIND_CATCH = 29,
    CROCKFORD_TOKEN_KIND_SEMI_COLON = 30,
    CROCKFORD_TOKEN_KIND_DO = 31,
    CROCKFORD_TOKEN_KIND_DOUBLE_NOT_EQUAL = 32,
    CROCKFORD_TOKEN_KIND_LT_SYM = 33,
    CROCKFORD_TOKEN_KIND_MINUS_EQUALS = 34,
    CROCKFORD_TOKEN_KIND_PERCENT = 35,
    CROCKFORD_TOKEN_KIND_EQUALS = 36,
    CROCKFORD_TOKEN_KIND_THROW = 37,
    CROCKFORD_TOKEN_KIND_TRY = 38,
    CROCKFORD_TOKEN_KIND_GT_SYM = 39,
    CROCKFORD_TOKEN_KIND_REGEXBODY = 40,
    CROCKFORD_TOKEN_KIND_TYPEOF = 41,
    CROCKFORD_TOKEN_KIND_OPEN_PAREN = 42,
    CROCKFORD_TOKEN_KIND_WHILE = 43,
    CROCKFORD_TOKEN_KIND_VAR = 44,
    CROCKFORD_TOKEN_KIND_CLOSE_PAREN = 45,
    CROCKFORD_TOKEN_KIND_STAR = 46,
    CROCKFORD_TOKEN_KIND_DOUBLE_PIPE = 47,
    CROCKFORD_TOKEN_KIND_PLUS = 48,
    CROCKFORD_TOKEN_KIND_OPEN_BRACKET = 49,
    CROCKFORD_TOKEN_KIND_COMMA = 50,
    CROCKFORD_TOKEN_KIND_DELETE = 51,
    CROCKFORD_TOKEN_KIND_SWITCH = 52,
    CROCKFORD_TOKEN_KIND_MINUS = 53,
    CROCKFORD_TOKEN_KIND_IN = 54,
    CROCKFORD_TOKEN_KIND_TRIPLE_EQUALS = 55,
    CROCKFORD_TOKEN_KIND_CLOSE_BRACKET = 56,
    CROCKFORD_TOKEN_KIND_DOT = 57,
    CROCKFORD_TOKEN_KIND_DEFAULT = 58,
    CROCKFORD_TOKEN_KIND_FORWARD_SLASH = 59,
    CROCKFORD_TOKEN_KIND_CASE = 60,
    CROCKFORD_TOKEN_KIND_LE_SYM = 61,
};

@interface CrockfordParser : PKParser

@end
