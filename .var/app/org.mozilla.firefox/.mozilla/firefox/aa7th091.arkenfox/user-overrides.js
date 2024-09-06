/* override recipe: enable session restore ***/
user_pref("browser.startup.page", 3); // 0102
user_pref("privacy.clearOnShutdown_v2.historyFormDataAndDownloads", false); // 2811 FF128+

/* 0710: enable DNS-over-HTTPS (DoH) [FF60+] ***/
user_pref("network.trr.mode", 3);

/* 2651: disable user interaction for security by always asking where to download ***/
user_pref("browser.download.useDownloadDir", true);

/* 5003: disable saving passwords ***/
user_pref("signon.rememberSignons", false);

/* 5508: enable all DRM content (EME: Encryption Media Extension) ***/
user_pref("media.eme.enabled", true);

/* 5010: disable location bar suggestion types ***/
user_pref("browser.urlbar.suggest.topsites", false);
