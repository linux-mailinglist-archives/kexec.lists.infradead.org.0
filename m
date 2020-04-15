Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AFC1AA8CA
	for <lists+kexec@lfdr.de>; Wed, 15 Apr 2020 15:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2AVpKn4EuRW2wCus6L+JmHDJ/wANv7Bu/0kO/TpPhsE=; b=o5wXCaHXTww4eY
	aYqhXXbM8ug8/uY0lk3YiFPrmkMdAp4yPSWwIdEVrQdZBPOK8BiNrtbxuYBBHcrR/MM+0NXbCAddN
	o/4u0gOciRkYseoUh+tbXdMb99zdD878oc7Dhms6A3963Bi8rY1WXyg8OiUjhWLWMKKty2Od2nQq5
	9zE7CTBezQZ4LiZmVL4F+bglaHp5JbnGB9OpFWdmyf9JcNflJ0799z34gvAejguIriD/aGqAf0cMV
	HmyxzNFGIfUoG1W8hVf/ObdxPBxyJpHxm5aU+DBp+18yQnnK6m+7gHoYYu+/PDoSOq95Ia82diAdI
	N8mylyt00Jw2jHVjFeeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOiGm-0005Ot-40; Wed, 15 Apr 2020 13:40:00 +0000
Received: from mail-eopbgr1410089.outbound.protection.outlook.com
 ([40.107.141.89] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOiGi-0005NS-3m
 for kexec@lists.infradead.org; Wed, 15 Apr 2020 13:39:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G6mg6VAaXf4ibdfjhiPAwSjohxX0ZpL04PbNRAOsVaKlxcBWBf0i4Xz4OVzVK/mosw3874opwWwz+ExjIvMf0VB3ZqD2zuBFV4+Ao1reotbFK8ydTRtkF+Y91khGTCKdRRm6n+WHEam8xlaYE7N4zpjHWCC9W/ny58F/yIXqUQOrwBLqORMKA5RZQIDhvRD/nODk76nrKyXUoB+oNQFpm4Ng3KMMnWxIKPzD8zS6wiX5vGPSsexUEyI6WFg5bMfb/Fa8PqhPiXb5pSe5Nt5QDQMYqeZ/QbGTv+a8OPcu++jzy5lt+jDvzxabXM2Thq/ESQcHpIQJ+4tuVBzWo4HA+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bXXhwKbuifXkTAbZx296jknpZfYWU9uZimS4jIvAEig=;
 b=Ogc6e0JMeyxmIn4Dcov33fIoyr2kUPEAyVbzZxFAnBeCDZq8W6iaPwHbDiSIASafIRmMRmU6eQg597NHkT3rCAPDer78jEGDh+QQO2Ruye99EeuAPaaCdozcMqtExhmnXkF8ZlFfig6MLhQSmod77B700Lsyz50QelZwUqYxhpgdzavNgpJG0MdzFnmreBzJJsTEPAVO5/92PggVE/JSOY7p4RYfCE5JK83ApMXZKvHR4HEG3XmCk6LrGc9VZFz/7ppk+qe79HvgNwJRHIdbI/FAOvtAcV+dPvmXG40JG4r/0lQ/s9c4g4/UQywSnrlEfgWBARtZUDA1vy57T3TlwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bXXhwKbuifXkTAbZx296jknpZfYWU9uZimS4jIvAEig=;
 b=fSbB6N9yvQUYzSPQH1qjonAP4VV+g8b3Qs1nCAibzJHsBbAPoWUJfiIE9PkXT+6D7MLv9/AB9xYtfhUbUqOfMM27TU5h23KHp2YppSHVvyrUVgkN9HqOUxcBq+sJID+szzvnObQfevosdissIhthkGieL4UQAmv2sd5EPKUk9uE=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (52.134.241.23) by
 OSBPR01MB3768.jpnprd01.prod.outlook.com (20.178.96.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.24; Wed, 15 Apr 2020 13:39:48 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 13:39:47 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: [PRE-ANNOUNCE] makedumpfile: Moving to GitHub
Thread-Topic: [PRE-ANNOUNCE] makedumpfile: Moving to GitHub
Thread-Index: AdYTKKkrF7VIfk0mRMWvaUq2Nkv0ZA==
Date: Wed, 15 Apr 2020 13:39:47 +0000
Message-ID: <OSBPR01MB199153A43ABF489F17ACB84EDDDB0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 639c24b5-cd2c-480e-47e3-08d7e142772d
x-ms-traffictypediagnostic: OSBPR01MB3768:
x-microsoft-antispam-prvs: <OSBPR01MB3768849250D4C06B2E190649DDDB0@OSBPR01MB3768.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0374433C81
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(376002)(136003)(396003)(186003)(6916009)(8936002)(55016002)(85182001)(66446008)(76116006)(9686003)(66946007)(8676002)(316002)(52536014)(33656002)(81156014)(64756008)(86362001)(66556008)(66476007)(5660300002)(966005)(2906002)(26005)(478600001)(4744005)(6506007)(71200400001)(7696005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WtgQ2JiPlRL3VvDdlpnb1W7hASK6mLALAajXWp1j6hP1FDSQdpm+/N8ztBm9zTxSEWhEbropcfTpEU+a/ZDsLyPzMNEIEI+yar6M+G4aEajJyJ6EtUm4sNnTOMxkth1bZ420Kj/3lxeqYPEhQAQK8qfDSEvoleMyPweFFxr75x62QV4ZowkboHBcnDzexyWa0z/zJPjEDyMTIn+6itNtbe161+naGnhoKvKlUUY5Kc+YEeQCTbyApwu/iD7Re1byZFynFA4vOIQCS60cWuEiuxePR5RrhKaso8MtWUHASe0ihT/Lvcnn2f1wNOfN3dEdqbyKH0aJ3T9qLDfchjo1X6hX2hogFGkA5EENNHOHX0shZrx88HXMzPR08xTLvtRCUVsTg7zRgQeAeDkzZyk0RNfF7VQW/hR5aUOU5xq880ovSsXIP7uuN8rap2oAj4pdSdoGLsUeNAWWj7PhcqpW0OckXT15h1mrauniVMpQ/BeTv3Y2g02thyy5foNjiHeqTI3peaFDaWaNSFXof0S1fw==
x-ms-exchange-antispam-messagedata: e/9M1WiAHMDhSBQ5mGaSVZcSzmxqT+wVPZBeFePqUex+7hTLt1f+HZszEdTn2Wi54sWzT3u7hN008qzlxRaYpYKjcgpmZ+GImTq3O8sNdM23cSn4IwbDSmQePFjkhcLskALNyN7tz6t7IHQprhu5WA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 639c24b5-cd2c-480e-47e3-08d7e142772d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2020 13:39:47.8842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J7GYAM2w08V1/GmeujO69IVau62pltQsuKClIt4qbvAdZ1LWR2xxKrRGVcE0kj9zFGH/PGDPTUqT9ioRJr6Txg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3768
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_063956_207748_74672229 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

I'm going to move makedumpfile's project page [1] and git repository
from SourcrForge to GitHub for several reasons.  I will announce it
when the preparation is completed.

With this move, I plan to discontinue its 'devel' branch and use 'master'
only.  We have not merged any hotfix directly into the master branch and
distributions have backported patches in the devel branch into their trees.
I don't think we make much use of the branch feature.  I'd like to simplify
the process.

Please let me know if you have any concerns.

Although moving to GitHub, I continue to prefer you to post makedumpfile
patches to this email list for reasons of a lot of good eyes.

[1] https://sourceforge.net/projects/makedumpfile/

Thanks,
Kazu


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
