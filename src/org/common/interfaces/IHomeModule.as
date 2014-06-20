package org.common.interfaces
{
	import org.shell.view.FindGamesView;
	import org.shell.view.InProgressGamesView;
	import org.shell.view.PlayerStatusView;

	public interface IHomeModule
	{
		function setPlayerStatus(view:PlayerStatusView):void;
		function setFindNewGames(view:FindGamesView):void;
		function setInProgessGames(view:InProgressGamesView):void;
	}
}