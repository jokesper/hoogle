
module Web.Action(action) where

import CmdLine.All
import Web.Server
import Web.Response
import General.Web

action :: CmdQuery -> IO ()
action q | Server `elem` queryFlags q = server
action q = uncurry cgiResponse =<< response q
