load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def rtl8822cu_module(name, kernel_build, deps = None):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/realtek-drivers/8822cu:rtl8822cu_srcs"],
        makefile = ["//vendor/amlogic/realtek-drivers/8822cu:Makefile"],
        deps = deps,
        outs = ["88x2cu.ko"],
        kernel_build = kernel_build,
    )
