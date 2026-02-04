module pipeline_register #(
    parameter WIDTH = 32
)(
    input  logic              clk,
    input  logic              rst_n,

    input  logic [WIDTH-1:0]  in_data,
    input  logic              in_valid,
    output logic              in_ready,

    output logic [WIDTH-1:0]  out_data,
    output logic              out_valid,
    input  logic              out_ready
);

    logic [WIDTH-1:0] data_reg;
    logic             valid_reg;

    assign in_ready  = !valid_reg || (out_ready);
    assign out_data  = data_reg;
    assign out_valid = valid_reg;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            valid_reg <= 1'b0;
        end else begin
            if (in_ready) begin
                valid_reg <= in_valid;
                if (in_valid)
                    data_reg <= in_data;
            end
        end
    end

endmodule
