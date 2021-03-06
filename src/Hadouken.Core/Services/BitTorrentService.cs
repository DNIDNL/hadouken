﻿using System;
using System.Collections.Generic;
using System.Linq;
using Hadouken.Common.BitTorrent;
using Hadouken.Common.JsonRpc;
using Hadouken.Common.Messaging;
using Hadouken.Core.Services.Models;

namespace Hadouken.Core.Services
{
    public sealed class BitTorrentService : IJsonRpcService
    {
        private readonly IMessageBus _messageBus;
        private readonly ITorrentEngine _torrentEngine;

        public BitTorrentService(IMessageBus messageBus, ITorrentEngine torrentEngine)
        {
            if (messageBus == null) throw new ArgumentNullException("messageBus");
            if (torrentEngine == null) throw new ArgumentNullException("torrentEngine");
            _messageBus = messageBus;
            _torrentEngine = torrentEngine;
        }

        [JsonRpcMethod("torrents.getAll")]
        public IEnumerable<ITorrent> GetAll()
        {
            return _torrentEngine.GetAll();
        }

        [JsonRpcMethod("torrents.getByInfoHashList")]
        public IEnumerable<ITorrent> GetByInfoHashList(string[] infoHashList)
        {
            return infoHashList.Select(infoHash => _torrentEngine.GetByInfoHash(infoHash));
        }

        [JsonRpcMethod("torrents.getByInfoHash")]
        public ITorrent GetByInfoHash(string infoHash)
        {
            return _torrentEngine.GetByInfoHash(infoHash);
        }

        [JsonRpcMethod("torrents.getLabels")]
        public IEnumerable<string> GetLabels()
        {
            return _torrentEngine.GetAll().Select(t => t.Label).Where(l => !string.IsNullOrEmpty(l)).Distinct();
        }

        [JsonRpcMethod("torrents.addFile")]
        public void AddFile(byte[] data, TorrentParameters parameters)
        {
            var msg = new AddTorrentMessage(data)
            {
                Label = parameters.Label,
                SavePath = parameters.SavePath
            };

            _messageBus.Publish(msg);
        }

        [JsonRpcMethod("torrents.addUrl")]
        public void AddMagnetLink(string url, TorrentParameters parameters)
        {
            var msg = new AddUrlMessage(url)
            {
                Label = parameters.Label,
                Name = parameters.Name,
                SavePath = parameters.SavePath,
                Trackers = parameters.Trackers
            };

            _messageBus.Publish(msg);
        }

        [JsonRpcMethod("torrents.pause")]
        public void Pause(string infoHash)
        {
            _messageBus.Publish(new PauseTorrentMessage(infoHash));
        }

        [JsonRpcMethod("torrents.resume")]
        public void Resume(string infoHash)
        {
            _messageBus.Publish(new ResumeTorrentMessage(infoHash));
        }

        [JsonRpcMethod("torrents.remove")]
        public void Remove(string infoHash, bool removeData)
        {
            _messageBus.Publish(new RemoveTorrentMessage(infoHash) {RemoveData = removeData});
        }

        [JsonRpcMethod("torrents.move")]
        public void Move(string infoHash, string destination, bool overwriteExisting)
        {
            _messageBus.Publish(new MoveTorrentMessage(infoHash, destination) {OverwriteExisting = overwriteExisting});
        }

        [JsonRpcMethod("torrents.changeLabel")]
        public void ChangeLabel(string infoHash, string label)
        {
            _messageBus.Publish(new ChangeTorrentLabelMessage(infoHash) {Label = label});
        }
    }
}
