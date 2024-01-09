const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const add_mod = b.addModule("add", .{
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    add_mod.addCSourceFile(.{
        .file = .{ .path = "src/add.c" },
        .flags = &.{},
    });
    add_mod.addIncludePath(.{ .path = "include" });
}
