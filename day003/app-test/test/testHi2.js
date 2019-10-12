var hi = artifacts.require("hi")

contract("hi second test", function(accounts) {

  //mocha test test framework
  before(async () => {
    this.hi2 = await hi.deployed()
  })

  it("should be same as constructor argument", async function (){
    //console.log("test 5")
    //const hi2 = await hi.deployed()
    const greeting2 = await hi2.say()
    assert.equal(greeting2, "jasuil")
  })

  it("should be same as constructor argument", async function (){
    //console.log("test 6")
    //const hi2 = await hi.deployed()
    const greeting3 = await hi2.say()
    assert.equal(greeting3, "jasuil")
  })

})
