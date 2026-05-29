import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kazumi/request/config/api_endpoints.dart';

class StyleString {
  static const double cardSpace = 8;
  static const double safeSpace = 12;
  static BorderRadius mdRadius = BorderRadius.circular(10);
  static const Radius imgRadius = Radius.circular(12);
  static const double aspectRatio = 16 / 10;
}

const String customAppFontFamily = "MI_Sans_Regular";

/// Opts into the newer Material progress indicator appearance while Flutter
/// still exposes the compatibility flag.
/// ignore: deprecated_member_use
const ProgressIndicatorThemeData progressIndicatorTheme2024 =
    ProgressIndicatorThemeData(year2023: false);

/// Opts into the newer Material slider appearance while Flutter still exposes
/// the compatibility flag.
/// ignore: deprecated_member_use
const SliderThemeData sliderTheme2024 = SliderThemeData(
  year2023: false,
  showValueIndicator: ShowValueIndicator.onDrag,
);

/// Flutter-managed platform transitions. Route-level Modular transitions should
/// avoid overriding these unless the native page transition is intentionally bypassed.
const PageTransitionsTheme pageTransitionsTheme2024 = PageTransitionsTheme(
  builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
    TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
  },
);

/// Layout breakpoint according to google:
/// https://developer.android.com/develop/ui/compose/layouts/adaptive/use-window-size-classes.
///
/// **It's only a suggestion since not every device meet the breakpoint requirement.
/// You need to build layout with some more judgements.**
///
/// Some example device(portrait) width x height:
///
/// * iPhone SE3: 375 x 667
/// * iPhone 16: 393 x 852
/// * iPad Pro 11-inch: 834 x 1210
/// * HW MATE60 Pro: 387.7 x 836.9
/// * OHOS in floating window: 387.7 x 631.7 or 218.1
class LayoutBreakpoint {
  static const Map<String, double> compact = {'width': 600, 'height': 480};
  static const Map<String, double> medium = {'width': 840, 'height': 900};
}

/// Random user agent list
const List<String> userAgentsList = [
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',
  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.1',
  'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0',
  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0',
];

/// Default SyncPlay server list
const List<String> defaultSyncPlayEndPoints = [
  'syncplay.pl:8995',
  'syncplay.pl:8996',
  'syncplay.pl:8997',
  'syncplay.pl:8998',
  'syncplay.pl:8999',
];

const String defaultSyncPlayEndPoint = 'syncplay.pl:8996';

/// Random HTTP request header accept-language field list
const List<String> acceptLanguageList = [
  'zh-CN,zh;q=0.9',
  'zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6',
  'zh-CN,zh-TW;q=0.9,zh;q=0.8,en-US;q=0.7,en;q=0.6',
];

/// Bangumi API documentation required User-Agent format
Map<String, String> bangumiHTTPHeader = {
  'user-agent':
      'Predidit/Kazumi/${ApiEndpoints.version} (Android) (https://github.com/Predidit/Kazumi)',
  'referer': '',
  'content-type': 'application/json'
};

/// Optional hardware decoders
const Map<String, String> hardwareDecodersList = {
  'auto': 'Enable any available decoder',
  'auto-safe': 'Enable best decoder',
  'auto-copy': 'Enable best decoder with copy',
  'd3d11va': 'DirectX11 (Windows 8 and above)',
  'd3d11va-copy': 'DirectX11 (Windows 8 and above) (non-direct)',
  'videotoolbox': 'VideoToolbox (macOS / iOS)',
  'videotoolbox-copy': 'VideoToolbox (macOS / iOS) (non-direct)',
  'vaapi': 'VAAPI (Linux)',
  'vaapi-copy': 'VAAPI (Linux) (non-direct)',
  'nvdec': 'NVDEC (NVIDIA exclusive)',
  'nvdec-copy': 'NVDEC (NVIDIA exclusive) (non-direct)',
  'drm': 'DRM (Linux)',
  'drm-copy': 'DRM (Linux) (non-direct)',
  'vulkan': 'Vulkan (all platforms) (experimental)',
  'vulkan-copy': 'Vulkan (all platforms) (experimental) (non-direct)',
  'dxva2': 'DXVA2 (Windows 7 and above)',
  'dxva2-copy': 'DXVA2 (Windows 7 and above) (non-direct)',
  'vdpau': 'VDPAU (Linux)',
  'vdpau-copy': 'VDPAU (Linux) (non-direct)',
  'mediacodec': 'MediaCodec (Android)',
  'mediacodec-copy': 'MediaCodec (Android) (non-direct)',
  'cuda': 'CUDA (NVIDIA exclusive) (deprecated)',
  'cuda-copy': 'CUDA (NVIDIA exclusive) (deprecated) (non-direct)',
  'crystalhd': 'CrystalHD (all platforms) (deprecated)',
  'rkmpp': 'Rockchip MPP (Rockchip chips only)',
};

/// Android optional video renderer
const Map<String, String> androidVideoRenderersList = {
  'auto': 'Auto select',
  'gpu': 'Based on OpenGL, universal and robust option',
  'gpu-next': 'Based on Vulkan, best performance on new devices',
  'mediacodec_embed': 'Lowest power consumption, no upscaling support',
};

/// Super resolution filters
const List<String> mpvAnime4KShaders = [
  'Anime4K_Clamp_Highlights.glsl',
  'Anime4K_Restore_CNN_VL.glsl',
  'Anime4K_Upscale_CNN_x2_VL.glsl',
  'Anime4K_AutoDownscalePre_x2.glsl',
  'Anime4K_AutoDownscalePre_x4.glsl',
  'Anime4K_Upscale_CNN_x2_M.glsl'
];

/// Super resolution filters (Lite)
const List<String> mpvAnime4KShadersLite = [
  'Anime4K_Clamp_Highlights.glsl',
  'Anime4K_Restore_CNN_M.glsl',
  'Anime4K_Restore_CNN_S.glsl',
  'Anime4K_Upscale_CNN_x2_M.glsl',
  'Anime4K_AutoDownscalePre_x2.glsl',
  'Anime4K_AutoDownscalePre_x4.glsl',
  'Anime4K_Upscale_CNN_x2_S.glsl'
];

/// Optional playback speeds
const List<double> defaultPlaySpeedList = [
  0.25,
  0.5,
  0.75,
  1.0,
  1.25,
  1.5,
  1.75,
  2.0,
  2.25,
  2.5,
  2.75,
  3.0,
];

const String danmakuOnSvg = '''
    <svg xmlns="http://www.w3.org/2000/svg" data-pointer="none" viewBox="0 0 24 24">
      <path fill="#FFFFFF" fill-rule="evenodd" d="M11.989 4.828c-.47 0-.975.004-1.515.012l-1.71-2.566a1.008 1.008 0 0 0-1.678 1.118l.999 1.5c-.681.018-1.403.04-2.164.068a4.013 4.013 0 0 0-3.83 3.[...]
      <path fill="#00AEEC" fill-rule="evenodd" d="M22.846 14.627a1 1 0 0 0-1.412.075l-5.091 5.703-2.216-2.275-.097-.086-.008-.005a1 1 0 0 0-1.322 1.493l2.963 3.041.093.083.007.005a1 1 0 0 0 1.354[...]
    </svg>
    ''';

/// Optional default video aspect ratio
const Map<int, String> aspectRatioTypeMap = {
  1: "Auto",
  2: "Crop Fill",
  3: "Stretch Fill",
};

/// Optional player log level
/// LogLevel 0: Error 1: Warning 2: Brief 3: Verbose 4: Debug (hidden) 5: All (hidden)
const Map<int, String> playerLogLevelMap = {
  0: "Error",
  1: "Warning",
  2: "Brief",
  3: "Verbose",
};

final List<String> defaultAnimeTags = const [
  'Slice of Life',
  'Original',
  'School',
  'Comedy',
  'Fantasy',
  'Yuri',
  'Romance',
  'Mystery',
  'Action',
  'Harem',
  'Mecha',
  'Light Novel',
  'Idol',
  'Healing',
  'Isekai',
];

// Player default shortcuts
final Map<String, List<String>> defaultShortcuts = const {
  'playorpause': [' '],
  'forward': ['Arrow Right'],
  'rewind': ['Arrow Left'],
  'next': ['N'],
  'prev': ['P'],
  'volumeup': ['Arrow Up'],
  'volumedown': ['Arrow Down'],
  'togglemute': ['M'],
  'fullscreen': ['F'],
  'exitfullscreen': ['Escape'],
  'toggledanmaku': ['D'],
  'screenshot': ['S'],
  'skip': ['K'],
  'speed1': ['1'],
  'speed2': ['2'],
  'speed3': ['3'],
  'speedup': ['X'],
  'speeddown': ['Z'],
};

// Key aliases
final Map<String, String> keyAliases = {
  ' ': 'Space',
  'Arrow Up': '↑',
  'Arrow Down': '↓',
  'Arrow Left': '←',
  'Arrow Right': '→',
  'Enter': 'Enter',
  'Tab': 'Tab',
  'Escape': 'Esc',
  'Backspace': 'Backspace',
};

// Function English name mapping
final Map<String, String> shortcutsChineseName = {
  'playorpause': 'Play / Pause',
  'forward': 'Fast Forward / Speed (Hold)',
  'rewind': 'Rewind',
  'next': 'Next Episode',
  'prev': 'Previous Episode',
  'volumeup': 'Volume Up',
  'volumedown': 'Volume Down',
  'togglemute': 'Mute',
  'fullscreen': 'Fullscreen',
  'exitfullscreen': 'Exit Fullscreen',
  'toggledanmaku': 'Toggle Danmaku',
  'screenshot': 'Screenshot',
  'skip': 'Skip',
  'speed1': 'Speed: 1x',
  'speed2': 'Speed: 2x',
  'speed3': 'Speed: 3x',
  'speedup': 'Speed Up',
  'speeddown': 'Speed Down',
};
