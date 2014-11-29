var filterEmails = {};

(function (ns) {

  ns.filter = function(emailsList) {
    if (emailsList.length < 1) {
      return [];
    }
    return emailsList.filter(isValid);
  }


  function isValid(email) {
    return isCorrectArroba(email) && isCorrectDot(email);
  }

  function isCorrectArroba(email) {
    var position = arrobaPosition(email);
    return position != -1 && position != 0 && position != email.length - 1;
  }

  function arrobaPosition(email) {
    return email.indexOf('@');
  }

  function isCorrectDot(email) {
    return email.indexOf('.') != -1 && email.indexOf('.') > arrobaPosition(email);
  }

}(filterEmails));



describe("Filters valid emails from list", function() {

  it("when list is empty may return empty list", function() {
    expect(filterEmails.filter([])).toEqual([]);
  });

  it("when list with one valid mail may return list with mail", function() {
    expect(filterEmails.filter(["aaa@ab.com"])).toEqual(["aaa@ab.com"]);
  });

  it("when list with one not valid mail may return empty list", function() {
    expect(filterEmails.filter(["aaaabcom"])).toEqual([]);
  });

  it("when list contain a mail with first letter @ may return empty list", function() {
    expect(filterEmails.filter(["@kdsfj@dk.com"])).toEqual([]);
  });

  it("when list contain a mail with last letter @ may return empty list", function() {
    expect(filterEmails.filter(["kdsfjdk.com@"])).toEqual([]);
  });

  it("when list contain a mail with dot prev to @ may return empty list", function() {
    expect(filterEmails.filter(["ddfdf.dkj@kdfj"])).toEqual([]);
  });

  it("when list contains two elements with one valid mail may return a list with this element", function() {
    expect(filterEmails.filter(["a.aa@es", "aaa@bb.es"])).toEqual(["aaa@bb.es"]);
  });

});
