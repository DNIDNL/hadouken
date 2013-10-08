﻿///<reference path="hdkn.d.ts"/>
///<reference path="BitTorrent/BitTorrentEngine.ts"/>
///<reference path="UI/TorrentDetailsPage.ts"/>
///<reference path="UI/TorrentsListPage.ts"/>
///<reference path="UI/ConfigureDialog.ts"/>

module Hadouken.Plugins.Torrents {
    export class TorrentsPlugin extends Hadouken.Plugins.Plugin {
        private _pageManager: Hadouken.UI.PageManager;
        private _torrentEngine: Hadouken.Plugins.Torrents.BitTorrent.BitTorrentEngine;

        constructor() {
            super();
            this._pageManager = Hadouken.UI.PageManager.getInstance();
        }

        load(): void {
            this.setupMainMenu();
            this.loadPages();
        }

        unload(): void { }

        configure(): void {
            new Hadouken.Plugins.Torrents.UI.ConfigureDialog().show();
        }

        private setupMainMenu(): void {
            var anchor = $('<li><a href="#/torrents"><i class="icon-tasks"></i> Torrents</a></li>');
            $('#main-menu').append(anchor);
        }

        private loadPages(): void {
            this._pageManager.addPage(new Hadouken.Plugins.Torrents.UI.TorrentsListPage());
            this._pageManager.addPage(new Hadouken.Plugins.Torrents.UI.TorrentDetailsPage());
        }
    }
}

try {
    var plugin = new Hadouken.Plugins.Torrents.TorrentsPlugin();
    plugin.load();

    var pluginEngine = Hadouken.Plugins.PluginEngine.getInstance();
    pluginEngine.setPlugin('core.torrents', plugin);
} catch(e) {
    console.log(e);
}