`timescale 1ns / 1ps

module output_formatter (
    input wire [7:0] matrix_data,    // 输入的矩阵数据
    output reg [7:0] formatted_data, // 格式化后的数据
    output reg new_line               // 是否开始新的一行
);

    reg [3:0] row_count; // 行计数器

    always @(matrix_data) begin
        if (matrix_data == 8'd10) begin  // ASCII 为换行符
            new_line <= 1;
            row_count <= row_count + 1;
        end else begin
            formatted_data <= matrix_data;
            new_line <= 0;
        end
    end
endmodule
