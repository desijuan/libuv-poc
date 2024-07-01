const std = @import("std");

const c = @cImport({
    @cInclude("uv.h");
});

pub fn main() !void {
    const loop = c.uv_default_loop();

    std.debug.print("Default loop.\n", .{});

    _ = c.uv_run(loop, c.UV_RUN_DEFAULT);

    _ = c.uv_loop_close(loop);
}
