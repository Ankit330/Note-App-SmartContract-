const NotesContract = artifacts.required("note");

module.exports = function (deployer){
    deployer.deploy(NotesContract);
}