const std = @import("std");
const Builder = std.Build;

const examples = &[_][]const u8{"amp"};

pub fn build(b: *Builder) !void {
    const clap = b.addModule("zig-clap", .{
        .root_source_file = .{ .path = "src/clap.zig" },
    });
    _ = clap;

    // const target = b.standardTargetOptions(.{});
    // const optimize = b.standardOptimizeOption(.{});

    // inline for (examples) |example| {
    //     const lib = b.addSharedLibrary(.{
    //         .name = example,
    //         .root_source_file = .{ .path = "examples/" ++ example ++ "/" ++ example ++ ".zig" },
    //         .target = target,
    //         .optimize = optimize,
    //     });

    //     lib.root_module.addImport("zig-clap", clap);

    //     var install = b.addInstallArtifact(lib, .{});
    //     install.dest_sub_path = try std.mem.concat(b.allocator, u8, &.{
    //         try std.zig.binNameAlloc(b.allocator, .{
    //             .root_name = example,
    //             .target = target.toTarget(),
    //             .output_mode = .Lib,
    //             .link_mode = .Dynamic,
    //         }),
    //         ".clap",
    //     });

    //     var step = b.step(example, "Build example \"" ++ example ++ "\"");
    //     step.dependOn(&install.step);
    // }
}
