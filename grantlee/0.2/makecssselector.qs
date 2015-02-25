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
var MakeCheckedFilter = function(input) {
  input = input.rawString();
  if(input.indexOf("-checked") !== -1) {
    input = input.replace("sm_", "")
    input = input.charAt(0).toLowerCase() + input.slice(1);

    return "." + input.replace("-checked", ":checked");
  }else {
    return "";
  }
};
MakeCheckedFilter.filterName = "makecheckedselector";
Library.addFilter("MakeCheckedFilter");

// create a css selector by replacing -hover with :hover
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
