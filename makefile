VERIOG = iverilog
TARGET = voter.vcd

$(TARGET) : simple.vvp
	vvp simple.vvp

simple.vvp: voter_tb.v voter.v
	$(VERIOG) -o simple.vvp voter_tb.v voter.v

clean:
	rm $(TARGET)