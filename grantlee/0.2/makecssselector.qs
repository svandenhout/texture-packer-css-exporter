// create a css selector by replacing -hover with :hover
var MakeSelectorFilter = function(input) {
  input = input.rawString();
  if(input.indexOf("-hover") !== -1) {
    input = input.replace("sm_", "");
    input = input.charAt(0).toLowerCase() + input.slice(1);

    return "." + input.replace("-hover", ":hover");
  }else {
    return "";
  }
};
MakeSelectorFilter.filterName = "makecssselector";
Library.addFilter("MakeSelectorFilter");

// create a css selector by replacing -hover with :hover
var MakeParentHoverFilter = function(input) {
  input = input.rawString();
  if(input.indexOf("-parenthover") !== -1) {
    input = input.replace("sm_", "");
    input = input.charAt(0).toLowerCase() + input.slice(1);

    return "*:hover > " + "." + input.replace("-parenthover", "");
  }else {
    return "";
  }
};
MakeParentHoverFilter.filterName = "makeparenthoverselector";
Library.addFilter("MakeParentHoverFilter");

var MakeCheckedFilter = function(input) {
  input = input.rawString();
  if(input.indexOf("-checked") !== -1) {
    input = input.replace("sm_", "")
    input = input.charAt(0).toLowerCase() + input.slice(1);

    return "input:checked + " + "." + input.replace("-checked", "");
  }else {
    return "";
  }
};

MakeCheckedFilter.filterName = "makecheckedselector";
Library.addFilter("MakeCheckedFilter");

var MakeSelectedFilter = function(input) {
  input = input.rawString();
  if(input.indexOf("-selected") !== -1) {
    input = input.replace("sm_", "")
    input = input.charAt(0).toLowerCase() + input.slice(1);

    return "." + input.replace("-selected", ".current");
  }else {
    return "";
  }
};
MakeSelectedFilter.filterName = "makeselectedclass";
Library.addFilter("MakeSelectedFilter");

var HasFilters = function(input) {
  input = input.rawString();
  if(input.indexOf("-") === -1) {
    input = input.replace("sm_", "")
    input = input.charAt(0).toLowerCase() + input.slice(1);

    return "." + input;
  }else {
    return "";
  }
};

HasFilters.filterName = "hasfilters";
Library.addFilter("HasFilters");
