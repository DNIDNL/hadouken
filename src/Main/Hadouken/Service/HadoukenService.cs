﻿using Hadouken.Events;
using Hadouken.Framework.Rpc.Hosting;
using Hadouken.Plugins;
using Hadouken.Rpc;
using NLog;

namespace Hadouken.Service
{
	public class HadoukenService : IHadoukenService
	{
		private static readonly Logger Logger = LogManager.GetCurrentClassLogger();

	    private readonly IEventServer _eventServer;
	    private readonly IPluginEngine _pluginEngine;
	    private readonly IWcfJsonRpcServer _wcfRpcServer;

        public HadoukenService(IEventServer eventServer, IPluginEngine pluginEngine, IWcfJsonRpcServer wcfRpcServer)
		{
		    _eventServer = eventServer;
		    _pluginEngine = pluginEngine;
		    _wcfRpcServer = wcfRpcServer;
		}

		public void Start(string[] args)
		{
			Logger.Info("Starting Hadouken");

		    _eventServer.Open();

		    _wcfRpcServer.Open();

			_pluginEngine.ScanAsync().Wait();
			_pluginEngine.LoadAllAsync().Wait();
		}

		public void Stop()
		{
			Logger.Info("Stopping Hadouken");

			_pluginEngine.UnloadAllAsync().Wait();

		    _wcfRpcServer.Close();

		    _eventServer.Close();
		}
	}
}
