// var TuneTokens = artifacts.require("TuneToken.sol");

// contract('TuneToken', function(accounts) {

//   var token, account;
//   const TOKEN_NAME = "TuneTokens";
//   const TOKEN_SYMBOL = "TUNE";
//   const TOKEN_DECIMALS = 18;
//   const TOTAL_SUPPLY = 400000000 ;

//   before(async() => {
//         tuneToken = await TuneToken.new(accounts[0],{from:accounts[0]});
//     });

//   describe("Token Basic Properties", async function () {

//     it("Name", async function () {
//       let tokenName = await tuneToken.name({from:accounts[0]});
//       assert.equal(tokenName,TOKEN_NAME);
//     });

//     it("Symbol", async function () {
//       let tokenSymbol = await tuneToken.symbol({from:accounts[0]});
//       assert.equal(tokenSymbol,TOKEN_SYMBOL);
//     });

//     it("Decimals", async function () {
//       let tokenDecimals = await tuneToken.decimals({from:accounts[0]});
//       assert.equal(parseInt(tokenDecimals),TOKEN_DECIMALS);
//     });

//     it("Total Supply", async function () {
//       let tokenTotalSupply = await tuneToken.totalSupply({from:accounts[0]});
//       assert.equal(tokenTotalSupply.toString(10),TOTAL_SUPPLY);
//     });
//   });

// });