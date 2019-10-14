int int2bin(int decnum){
    int binaryNumber = 0;
    int remainder, i = 1, step = 1;
    while (decnum!=0){
        remainder = decnum%2;
        decnum /= 2;
        binaryNumber += remainder*i;
        i *= 10;
    }
    return binaryNumber;
}