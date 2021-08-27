___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Join Strings",
  "description": "The join Strings returns the values as a string.\n\nThe elements will be separated by a specified separator. The default separator is comma (,).",
  "categories": [
    "UTILITY"
  ],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SIMPLE_TABLE",
    "name": "inputData",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Add values to concatenate:",
        "name": "value",
        "type": "TEXT",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "defaultValue": true,
        "displayName": "Mandatory value",
        "name": "mandatory",
        "type": "SELECT",
        "selectItems": [
          {
            "value": true,
            "displayValue": "true"
          },
          {
            "value": false,
            "displayValue": "false"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "group1",
    "displayName": "Join options:",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "TEXT",
        "name": "separator",
        "displayName": "Separator",
        "simpleValueType": true,
        "defaultValue": ",",
        "valueHint": ","
      }
    ]
  },
  {
    "type": "LABEL",
    "name": "info",
    "displayName": "\u003cstrong\u003e\u003ca href\u003d\"https://www.luratic.com/posts/templates/variables/join-strings/\"\u003eDocumentation\u003c/a\u003e\u003c/strong\u003e"
  },
  {
    "type": "LABEL",
    "name": "info2",
    "displayName": "\u003cstrong\u003e\u003ca href\u003d\"https://datola.es\"\u003eCommunity 📊\u003c/a\u003e\u003c/strong\u003e"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const getType = require('getType');
const makeString = require('makeString');
const values = data.inputData;
const separator = data.separator;
let strings = [];
values.forEach(parameter => {
  var type = getType(parameter.value);  
  let value = makeString(parameter.value);
  let mandatory = parameter.mandatory;
  let isRequired = type === 'undefined' && mandatory;
  if(value !=='undefined' || isRequired) {
     strings.push(value);
  } 
});
const join = strings.join(separator);
return join;


___TESTS___

scenarios: []


___NOTES___

Developed with ❤ by: Alfonso, Txema and Brais.
Web: www.luratic.com
Linkedin: 
https://www.linkedin.com/in/braiscalvo/
https://www.linkedin.com/in/alfonsorc/
https://www.linkedin.com/in/txemasm/


