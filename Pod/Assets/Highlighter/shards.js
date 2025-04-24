/*
  Language: Shards
  Description: Shards programming language syntax highlighting
  Author: Converted from Sublime Text syntax
  Website: https://github.com/fragcolor-xyz/shards
  Category: programming
*/

hljs.registerLanguage('shards', function(hljs) {
  return {
    name: 'Shards',
    aliases: ['shards', 'shs'],
    case_insensitive: false,
    keywords: {
      literal: 'true false none'
    },
    contains: [
      // Comments
      {
        className: 'comment',
        begin: ';',
        end: '$',
        contains: [hljs.PHRASAL_WORDS_MODE],
        relevance: 0
      },
      
      // Strings
      {
        className: 'string',
        begin: '"""',
        end: '"""',
        contains: [hljs.BACKSLASH_ESCAPE],
        relevance: 10
      },
      {
        className: 'string',
        begin: '"',
        end: '"',
        contains: [hljs.BACKSLASH_ESCAPE],
        relevance: 0
      },
      
      // Numbers
      {
        className: 'number',
        begin: '\\b(0x[a-fA-F0-9]+|\\d+)\\b',
        relevance: 0
      },
      
      // Enums
      {
        className: 'function',
        begin: '\\b([A-Z][a-zA-Z0-9_]*::[A-Z][a-zA-Z0-9_]*)\\b',
        relevance: 10
      },
      
      // Parameters
      {
        className: 'keyword',
        begin: '\\b[A-Z][A-Za-z0-9-._]*:',
        relevance: 10
      },
      
      // Shards
      {
        className: 'class',
        begin: '(@[a-z]|[A-Z])[a-zA-Z0-9_./-]*',
        relevance: 10
      },
      
      // Variables
      {
        className: 'variable',
        begin: '[a-z_][a-zA-Z0-9_.-]*',
        relevance: 0
      },
      
      // Commas
      {
        className: 'punctuation',
        begin: ',',
        relevance: 0
      },
      
      // Assignment operators
      {
        className: 'operator',
        begin: '=|>|>=|>>|>>=|>>!',
        relevance: 0
      }
    ]
  };
});