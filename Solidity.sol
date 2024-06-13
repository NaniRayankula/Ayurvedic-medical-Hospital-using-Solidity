// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HealthcareRecords {
    struct Record {
        string name;
        uint256 age;
        string sex;
        string diagnosis;
    }

    Record[] public records;

    function addRecord(string memory _name, uint256 _age, string memory _sex, string memory _diagnosis) public {
        records.push(Record(_name, _age, _sex, _diagnosis));
    }

    function getRecordsCount() public view returns (uint256) {
        return records.length;
    }

    function getRecord(uint256 index) public view returns (string memory, uint256, string memory, string memory) {
        require(index < records.length, "Record does not exist");
        Record memory record = records[index];
        return (record.name, record.age, record.sex, record.diagnosis);
    }
}
