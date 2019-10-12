var hi = artifacts.require("hi")

contract("hi first test", function(accounts) {

  it ("should be same as constructor argument", function (){
    return hi.deployed().then(function(instance) {
      return instance.say().then(function(greeting) {
        assert.equal(greeting, "jasuil")
      })
    })
  })

//same as above phase
  it("should be same as constructor argument", async function (){
    const hi2 = await hi.deployed()
    const greeting2 = await hi2.say()
    assert.equal(greeting2, "jasuil")
  })

  it("should be changed state variable", async function (){
    const hi3 = await hi.deployed()
    await hi3.setGreeting("hi, jasuil")
    const greeting3 = await hi3.say()
    assert.equal(greeting3, "hi, jasuil")
  })

  it("should be changed state variable", async function (){

    const gasPrice = web3.utils.toWei("1", "shannon")
    //console.log(gasPrice)
    const hi4 = await hi.deployed()
    const tx = await hi4.setGreeting("hi, jasuil", {from: accounts[1], gasPrice})
    const greeting4 = await hi4.say()
    //console.log(tx)
    assert.equal(greeting4, "hi, jasuil")
  })

})
