/* override recipe: enable session restore ***/
user_pref("browser.startup.page", 3); // 0102
user_pref("privacy.clearOnShutdown.history", false); // 2811

/* disable RFP letterboxing [FF67+] ***/
user_pref("privacy.resistFingerprinting.letterboxing", false); // 4504

/* experimental RFP [FF91+] ***/
user_pref("privacy.resistFingerprinting.exemptedDomains", "web.whatsapp.com"); // 4505

/* enable DNS-over-HTTPS (DoH) [FF60+] ***/
user_pref("network.trr.mode", 3); // 0710

/* disable saving passwords ***/
user_pref("signon.rememberSignons", false); // 5003

/* disable location bar suggestion types ***/
user_pref("browser.urlbar.suggest.topsites", false); // 5010

/* enable all DRM content (EME: Encryption Media Extension) ***/
user_pref("media.eme.enabled", true); // 5508
