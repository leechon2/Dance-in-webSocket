window._wpemojiSettings = {
  baseUrl: "https://s.w.org/images/core/emoji/14.0.0/72x72/",
  ext: ".png",
  svgUrl: "https://s.w.org/images/core/emoji/14.0.0/svg/",
  svgExt: ".svg",
  source: {
    concatemoji:
      "https://wp.w3layouts.com/dressup/wp-includes/js/wp-emoji-release.min.js?ver=6.2.4",
  },
};
/*! This file is auto-generated */
!(function (e, a, t) {
  var n,
    r,
    o,
    i = a.createElement("canvas"),
    p = i.getContext && i.getContext("2d");
  function s(e, t) {
    p.clearRect(0, 0, i.width, i.height), p.fillText(e, 0, 0);
    e = i.toDataURL();
    return (
      p.clearRect(0, 0, i.width, i.height),
      p.fillText(t, 0, 0),
      e === i.toDataURL()
    );
  }
  function c(e) {
    var t = a.createElement("script");
    (t.src = e),
      (t.defer = t.type = "text/javascript"),
      a.getElementsByTagName("head")[0].appendChild(t);
  }
  for (
    o = Array("flag", "emoji"),
      t.supports = { everything: !0, everythingExceptFlag: !0 },
      r = 0;
    r < o.length;
    r++
  )
    (t.supports[o[r]] = (function (e) {
      if (p && p.fillText)
        switch (((p.textBaseline = "top"), (p.font = "600 32px Arial"), e)) {
          case "flag":
            return s(
              "\ud83c\udff3\ufe0f\u200d\u26a7\ufe0f",
              "\ud83c\udff3\ufe0f\u200b\u26a7\ufe0f"
            )
              ? !1
              : !s(
                  "\ud83c\uddfa\ud83c\uddf3",
                  "\ud83c\uddfa\u200b\ud83c\uddf3"
                ) &&
                  !s(
                    "\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f",
                    "\ud83c\udff4\u200b\udb40\udc67\u200b\udb40\udc62\u200b\udb40\udc65\u200b\udb40\udc6e\u200b\udb40\udc67\u200b\udb40\udc7f"
                  );
          case "emoji":
            return !s(
              "\ud83e\udef1\ud83c\udffb\u200d\ud83e\udef2\ud83c\udfff",
              "\ud83e\udef1\ud83c\udffb\u200b\ud83e\udef2\ud83c\udfff"
            );
        }
      return !1;
    })(o[r])),
      (t.supports.everything = t.supports.everything && t.supports[o[r]]),
      "flag" !== o[r] &&
        (t.supports.everythingExceptFlag =
          t.supports.everythingExceptFlag && t.supports[o[r]]);
  (t.supports.everythingExceptFlag =
    t.supports.everythingExceptFlag && !t.supports.flag),
    (t.DOMReady = !1),
    (t.readyCallback = function () {
      t.DOMReady = !0;
    }),
    t.supports.everything ||
      ((n = function () {
        t.readyCallback();
      }),
      a.addEventListener
        ? (a.addEventListener("DOMContentLoaded", n, !1),
          e.addEventListener("load", n, !1))
        : (e.attachEvent("onload", n),
          a.attachEvent("onreadystatechange", function () {
            "complete" === a.readyState && t.readyCallback();
          })),
      (e = t.source || {}).concatemoji
        ? c(e.concatemoji)
        : e.wpemoji && e.twemoji && (c(e.twemoji), c(e.wpemoji)));
})(window, document, window._wpemojiSettings);
