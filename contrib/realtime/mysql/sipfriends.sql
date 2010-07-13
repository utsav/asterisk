#
# Table structure for table `sipfriends`
#

CREATE TABLE `sipfriends` (
  `name` varchar(40) NOT NULL default '',
  `type` varchar(10) NOT NULL default '',
  `username` varchar(40),
  `fromuser` varchar(40),
  `fromdomain` varchar(40),
  `secret` varchar(40),
  `md5secret` varchar(40),
  `auth` varchar(10),
  `mailbox` varchar(20),
  `subscribemwi` varchar(10), -- yes/no
  `vmexten` varchar(20),
  `callerid` varchar(40),
  `cid_number` varchar(40),
  `callingpres` varchar(20),
  `usereqphone` varchar(10),
  `language` varchar(10),
  `incominglimit` varchar(10),
  `context` varchar(40) NOT NULL default '',
  `subscribecontext` varchar(40),
  `amaflags` varchar(20),
  `accountcode` varchar(20),
  `musicclass` varchar(20),
  `mohsuggest` varchar(20),
  `allowtransfer` varchar(20),
  `callgroup` varchar(20),
  `pickupgroup` varchar(20),
  `autoframing` varchar(10), -- yes/no
  `disallow` varchar(20) default 'all',
  `allow` varchar(20),
  `maxcallbitrate` varchar(15),
  `host` varchar(40) default 'dynamic',
  `outboundproxy` varchar(40),
  `ipaddr` varchar(20) NOT NULL default '',
  `defaultip` varchar(20),
  `port` int(6) NOT NULL default '0',
  `fullcontact` varchar(40),
  `insecure` varchar(20),
  `qualify` varchar(15),
  `regseconds` int(11) NOT NULL default '0',
  `regexten` varchar(20),
  `regserver` varchar(20),
  `rtptimeout` varchar(15),
  `rtpholdtimeout` varchar(15),
  `rtpkeepalive` varchar(15),
  `lastms` int(11) NOT NULL default '-1',
  `setvar` varchar(200),
  PRIMARY KEY  (`name`),
  INDEX host (host, port),
  INDEX ipaddr (ipaddr, port),
) TYPE=MyISAM;