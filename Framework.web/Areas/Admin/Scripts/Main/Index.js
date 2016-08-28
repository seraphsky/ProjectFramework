﻿$(function () {

    var eui = modules.get("eui");
    var t = modules.get("tool");
    var f = modules.get("func");

    function init() {
        $("#layout").layout("panel", "west").panel("href", "/Admin/Menu");
    }

    /**
     * 选择面板
     * @param {string} title
     * @param {tab} tab
     * @param {string} url
     */
    function choseTab(title, tab, url) {
        var extab = tab.tabs("getTab", title);
        if (!f.definededAndNotNull(extab)) {
            var count = tab.tabs("tabs").length;
            if (count >= 8) {
                tab.tabs("close", 0);
            }

            tab.tabs("add", {
                title: title,
                cache: true,
                closable: true,
                href: url,
                justified: true,
                style: { padding:1 }
            });
        } else {
            var index = tab.tabs("getTabIndex", extab);
            tab.tabs("select", index);
        }
    }

    try {
        init();
    } catch (e) {
        eui.alertErr(e.message);
    }
});