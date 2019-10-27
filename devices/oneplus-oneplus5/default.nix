{ config, lib, pkgs, ... }:

{
  mobile.device.name = "oneplus-oneplus5";
  mobile.device.info = rec {
    format_version = "0";
    name = "OnePlus OnePlus 5";
    manufacturer = "OnePlus";
    date = "";
    dtb = "";
    modules_initfs = "";
    arch = "aarch64";
    keyboard = false;
    external_storage = true;
    screen_width = "1080";
    screen_height = "1920";
    dev_touchscreen = "";
    dev_touchscreen_calibration = "";
    dev_keyboard = "";
    flash_method = "fastboot";
    kernel_cmdline = "androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 androidboot.usbconfigfs=true androidboot.usbcontroller=a800000.dwc3 androidboot.selinux=permissive buildvariant=eng";
    generate_bootimg = true;
    flash_offset_base = "0x80000000";
    flash_offset_kernel = "0x00008000";
    flash_offset_ramdisk = "0x01000000";
    flash_offset_second = "0x00f00000";
    flash_offset_tags = "0x00000100";
    flash_pagesize = "4096";

    # TODO : make kernel part of options.
    kernel = pkgs.callPackage ./kernel { kernelPatches = pkgs.defaultKernelPatches; };
  };

  mobile.hardware = {
    soc = "qualcomm-msm8996";
    ram = 1024 * 6;
    screen = {
      width = 1080; height = 1920;
    };
  };

  mobile.system.type = "android";
}
