pragma solidity ^0.8.14;
contract depositeth
{
    uint am=0;
    uint public h; 
    uint [] public ether_coated;
    function getbal() public payable {
        h=address(this).balance-am;
        am+=h;
        ether_coated.push(h);
    }
    function getbalance() public view returns(uint)
    {
        return address(this).balance;
    }
    function lotter(address rec,uint am) public payable
    {
        uint y=0;
        for (uint i=0;i<ether_coated.length;i++)
        {
            if (ether_coated[i]<am)
            {
                y+=ether_coated[i];
            }
        }
        payable(rec).transfer(y);
    }
}
