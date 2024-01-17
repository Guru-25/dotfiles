/* override recipe: enable session restore ***/
user_pref("browser.startup.page", 3); // 0102

/* override recipe: RFP is not for me ***/
user_pref("privacy.resistFingerprinting.letterboxing", false); // 4504 [pointless if not using RFP]

/* override recipe: enable DRM and let me watch videos ***/
user_pref("media.eme.enabled", true); // 2022

/* disable separate default search engine in Private Windows and its UI setting ***/
user_pref("browser.search.separatePrivateDefault", false); // 0830

/* disable saving passwords ***/
user_pref("signon.rememberSignons", false); // 5003

/* disable location bar suggestion types ***/
user_pref("browser.urlbar.suggest.topsites", false); // 5010

/* enable DNS-over-HTTPS (DoH) [FF60+] ***/
user_pref("network.trr.mode", 3); // 0710

/* set DoH provider ***/
user_pref("network.trr.uri", "https://doh3.dns.nextdns.io/xxxxxx/Firefox%20Web%20Browser"); // 0712
