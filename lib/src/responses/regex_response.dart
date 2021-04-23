class RegexResponse {
  static final String regexMAIN = r"#EXT-X-STREAM-INF:(?:.*,RESOLUTION=(\d+x\d+))?,?(.*)\r?\n(.*)";
  static final String regexMEDIA = r"""^#EXT-X-MEDIA:TYPE=AUDIO(?:.*,URI="(.*m3u8)")""";
  static final String regexAUDIO = "";
  static final String regexSUBTITLE = "";
  static final String regexSRT = r"^((\d{2}):(\d{2}):(\d{2}),(\d{3})) +--> +((\d{2}):(\d{2}):(\d{2}),(\d{2})).*[\r\n]+\s*((?:(?!\r?\n\r?).)*)";
  static final String regexASS = "";
  static final String regexVTT = "";
  static final String regexSTREAM = "";
  static final String regexFILE = "";
  static final String regexHTTP = r'^(http|https):\/\/([\w.]+\/?)\S*';
  static final String regexURL = r'(.*)\r?\/';
}
