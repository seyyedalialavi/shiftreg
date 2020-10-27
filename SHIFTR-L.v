module ShiftReg( Clock,L, RandL,D,Y,Q);
	input wire Clock,L,RandL;	
	input wire [3:0] D;	
	output wire [3:0] Q;
	reg [3:0] Y;
	
	always@(posedge Clock or posedge L)
	begin
		
		
		assign Y = L ? ({D[3], D[2], D[1], D[0]}):(RandL ? ({Q[2], Q[1], Q[0], D[0]}):({D[3], Q[3], Q[2], Q[1]}))
		
	end