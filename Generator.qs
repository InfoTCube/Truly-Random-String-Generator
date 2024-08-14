namespace Superposition {
    import Microsoft.Quantum.Convert.ResultArrayAsInt;
    @EntryPoint()
    operation Main() : String {
        let length = 10;
        mutable output = "ASCII decimal ( ";
        
        for i in 1..length {
            let char = GenerateRandomChar();
            set output += $"{char} ";
        }
        return output+")";
    }

    operation GenerateRandomChar() : String {
        mutable bits = [];
        for i in 1..7 {
            set bits += [GenerateRandomBit()];
        }
        let num = ResultArrayAsInt(bits);
        let answer = $"{num}";

        //33 - !, 126 - ~
        return num < 33 or num > 126 ? GenerateRandomChar() | answer;
    }

    operation GenerateRandomBit() : Result {
        use q = Qubit();
        H(q);
        return MResetZ(q);
    }
}