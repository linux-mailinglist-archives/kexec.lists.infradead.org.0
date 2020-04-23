Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 976B31B5DAD
	for <lists+kexec@lfdr.de>; Thu, 23 Apr 2020 16:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lGMLGWjGeUcQWwTECT5dGb9bkLhl6vjXIo0x+g1ZZxs=; b=TpZxBzxTVGwlFO
	rhxNncshfvphtzDTvPGo2lcqZ93pHC1h3E40qKj7L8AxI48QFn6pa7cHpLq5mMvi/uXjxVP+B6vRl
	CoyXVmsnRuT9+cQt7T6B5vikVfSn9bvDbDNx2CKjNz7YqGRqHmcLrxMFIrkVBdRgJLkGWX2H/rOLn
	+Cv1k73utbuG/oVW0enEv5s8OJERdSpnfuucOIEYxLnKY0CyTWFj/ETTi4NRQ9wMSAcguvrK0gCqh
	MEy0hV9vjkcX2qJSXRqqdkvpxyqlJfHBIAnPi2Weiqwta7Usx3HawL46kMFYRMvaneZyuFOvWiHP/
	5FDJWblPnPIXMnoe1Vjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRcm0-00033o-Cg; Thu, 23 Apr 2020 14:24:16 +0000
Received: from mail-eopbgr1410079.outbound.protection.outlook.com
 ([40.107.141.79] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRcls-0002rF-8y
 for kexec@lists.infradead.org; Thu, 23 Apr 2020 14:24:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JovJSrpcGKYSAmRlLNcKkW+i6vzmHPEzGwSeP/jJAq1cyZ6MI+Cr2aDQVwzvhNM01hWwLuyW1auX8mfOWZqrXSyL9jan/zyVuPcZiggyCz7Pc9nK92f+6XkMsi6MVZ/fF4Nt9Ca0qug/6PLPF6+K713nTC/JkTlIIS+9jw0OSAKNQL2mJJhkxCFUmfY4ZHMBVuaW4tAxqMfaX1FkwVFD9Bs/wjYYhz9rB5Qs5+JodML1wErl/pvkJy1CYVPim7gR2W3Ju6IqFf1+0+jdV4++BmqsSSt/j2DVdVpG5kv6HiEmkgLXI1J0CghXSkgjXb72LQo7EVNRQ211W6SBaUQFpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GuU+8xDag5rg/CMxhYHqXflofaVD1aow+qzo60ISN18=;
 b=OZSPSXVBdfHdJAP6QOYcHyN4eRYGfBc7TsroFyIdzzJ+tGQ4OaRN7tWMFTu5uZ6gCo0gX1XDChz8kBd7mtDoMD7J4AYCak3OiuPULNCz47G4ILA3gA1oWG425qwHuyqP/WX++Od+bhipz4Nrfn5uI/Ia8bwCTFr0tAOabEe1AIVTooq4ZVIkUN+PVZvhlKpw2PSYbEaKQfcP3w7C5TsKAEMBuVSNfTCkMxEdAQIOVhOR0WwttpRUrq13+zDC7GVfS2TSlg0OvsfXx9rS0DEHhtd8bt7xe7eYduhS3Ey3vNmS87oRTtK0zkIpeBQAy5KUUNYOcoT5cRQKFBMG69OR3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GuU+8xDag5rg/CMxhYHqXflofaVD1aow+qzo60ISN18=;
 b=w5ej5+h88TDmpFf6ozs94KATiNecc3aBEEJNLcGM0QPR20De6eq2BtmE+Pc2oTqho4X/ZfCAilQiZMb92sQ1OeEorNqvFY+t1UmWVuT1B2rgWPyWt90jNYikCHiwW94TeyP4+xqsFhf52awvQi2ieHJGf8VdNN2Y5DQ5poIOAes=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (52.134.241.23) by
 OSBPR01MB4904.jpnprd01.prod.outlook.com (20.179.182.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Thu, 23 Apr 2020 14:23:59 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 14:23:59 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: Dave Anderson <anderson@redhat.com>, "Discussion list for crash utility
 usage, maintenance and development" <crash-utility@redhat.com>
Subject: RE: [Crash-utility] new printk ringbuffer interface
Thread-Topic: [Crash-utility] new printk ringbuffer interface
Thread-Index: AdYZequwvAGFPWjgQQyF0VtkXo6MXQ==
Date: Thu, 23 Apr 2020 14:23:59 +0000
Message-ID: <OSBPR01MB19916965DAEB1238FEB962F6DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae57a8f4-f4eb-4f8a-a530-08d7e791f6fc
x-ms-traffictypediagnostic: OSBPR01MB4904:
x-microsoft-antispam-prvs: <OSBPR01MB4904AE5404B10A4B9871440CDDD30@OSBPR01MB4904.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(136003)(366004)(346002)(376002)(81156014)(86362001)(8676002)(76116006)(66946007)(4326008)(55016002)(71200400001)(66556008)(66476007)(26005)(7696005)(52536014)(6506007)(8936002)(2906002)(5660300002)(186003)(64756008)(66446008)(9686003)(33656002)(316002)(110136005)(85182001)(478600001)(21314003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n146X19Uj0aySbPMz53nNKjzd5H9IDrXyYggagByXYQJN1Xh+AXY0bmNZivr33AwLGyrHUMFocpK9nQAMP8+zuYfG+XOe5SJb3ofMIOiawqn9cWcDMv4hZKm2cs3fBVu+SIhP/6HnUSVeR/bNLTkwRVKoN7SA0ydX4kBlIytQxkFgo+U3H2p8Rrtp0TOiIIMvG++4nFHsVYu9LFPlPGZ/D57w6h3D+nxbuG7iYDNibaKMTgjhhsy1UAddYXU7TViJfY4Hgk7ECYrfKo38IpB7HjwCgVfiKxLdTc9AQNwF/cDvY5e9OpCVlr5QyP7R6XLq3DXiBZBB92nEYmH7WFZ+SNO4x4/ylP7Ius770pCNAJ1fPScAgsykG/HVqHakSq6LNw2i3+HmLSW8jQYxp4/JYMl5o3HY2f9fI3+rqIQwIl3Ql+gcqqvAB7bK9w6a04grHNRaOARWRrYnZ47IWn/vvl4wl0pBFb8HGzje/CTSsYlSgEj2J3jPzGqN+rvGVyx
x-ms-exchange-antispam-messagedata: v+wduuoEUUOpsSaTE4wUHZy6GRHrZiq4otC3Wz6tYx0Nr1qBFUH9vYHAgxGla05cjFe3PI9z0R/i/KsMZLcbDaMkNMz+JgWEX97YoBUauvoneqStPhB7qgET3waTTHW/QAoDVmAPpTSzRB0ZyKYzSw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae57a8f4-f4eb-4f8a-a530-08d7e791f6fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 14:23:59.5741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fRPsKO/jVKY+dhuEldkJKOh81wtdqUzTc7/d/88eICbzD7aUaqIqSH/VJAmfhdb6Hn6pfG3+nRlKe9IKBkDTrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4904
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_072408_378912_5C31E8E6 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

ccing kexec list, vmcore-dmesg also uses vmcoreinfo related to printk..

> -----Original Message-----
> 
> ----- Original Message -----
> > Hello Dave,
> >
> > You may or may not be aware that we are working on replacing [0] the
> > Linux printk ringbuffer. Rather than a single buffer containing a single
> > struct type, the new ringbuffer makes use of several different structs.
> 
> Yes, I am most definitely aware...
> 
> >
> > I am writing to ask your advice about how this should be exported for
> > the crash utility. Should all struct sizes and field offsets be
> > exported? It would look something like this:
> >
> >         VMCOREINFO_SYMBOL(prb);
> >
> >         VMCOREINFO_STRUCT_SIZE(printk_ringbuffer);
> >         VMCOREINFO_OFFSET(printk_ringbuffer, desc_ring);
> >         VMCOREINFO_OFFSET(printk_ringbuffer, text_data_ring);
> >         VMCOREINFO_OFFSET(printk_ringbuffer, dict_data_ring);
> >         VMCOREINFO_OFFSET(printk_ringbuffer, fail);
> >
> >         VMCOREINFO_STRUCT_SIZE(prb_desc_ring);
> >         VMCOREINFO_OFFSET(prb_desc_ring, count_bits);
> >         VMCOREINFO_OFFSET(prb_desc_ring, descs);
> >         VMCOREINFO_OFFSET(prb_desc_ring, head_id);
> >         VMCOREINFO_OFFSET(prb_desc_ring, tail_id);
> >
> >         VMCOREINFO_STRUCT_SIZE(prb_desc);
> >         VMCOREINFO_OFFSET(prb_desc, info);
> >         VMCOREINFO_OFFSET(prb_desc, state_var);
> >         VMCOREINFO_OFFSET(prb_desc, text_blk_lpos);
> >         VMCOREINFO_OFFSET(prb_desc, dict_blk_lpos);
> >
> >         VMCOREINFO_STRUCT_SIZE(prb_data_blk_lpos);
> >         VMCOREINFO_OFFSET(prb_data_blk_lpos, begin);
> >         VMCOREINFO_OFFSET(prb_data_blk_lpos, next);
> >
> >         VMCOREINFO_STRUCT_SIZE(printk_info);
> >         VMCOREINFO_OFFSET(printk_info, seq);
> >         VMCOREINFO_OFFSET(printk_info, ts_nsec);
> >         VMCOREINFO_OFFSET(printk_info, text_len);
> >         VMCOREINFO_OFFSET(printk_info, dict_len);
> >         VMCOREINFO_OFFSET(printk_info, caller_id);
> >
> >         VMCOREINFO_STRUCT_SIZE(prb_data_ring);
> >         VMCOREINFO_OFFSET(prb_data_ring, size_bits);
> >         VMCOREINFO_OFFSET(prb_data_ring, data);
> >         VMCOREINFO_OFFSET(prb_data_ring, head_id);
> >         VMCOREINFO_OFFSET(prb_data_ring, tail_id);
> >
> > Or would it be enough to just recognize the new "prb" symbol and have
> > all the structures defined in the crash utility? If the latter is
> > preferred, should some sort of version number be exported? Or is the
> > kernel version number enough?

first I don't think we can depend on the kernel version because distribution
kernels backport upstream patches.  So we will need a version number of the
ringbuffer if we choose that way.

I think that "exporting all things" can sometimes reflect changes in kernel
automatically and can reduce tool side effort more than "exporting a version
number".  But the former requires a lot of entries and it might be hard for
us to track the changes.  So having an explicit version might be better and
I'm ok with the latter.

But I hope no missing update of the version number..
Any thoughts from vmcore-dmesg side?

Thanks,
Kazu

> >
> > I appreciate your feedback.
> >
> > John Ogness
> 
> With respect to the crash utility, there are two answers.
> 
> When running crash session normally, i.e. running "crash vmlinux vmcore", the runtime
> "log" command does not use any VMCOREINFO entries that happen to be attached to a dumpfile.
> Since crash has the vmlinux debuginfo data available, it uses its own interfaces to get
> all kernel symbol and structure related information.
> 
> But there is a little-used capability where the the vmlinux file is not required,
> but rather just the vmcore, in its "crash --log vmcore" feature.  That functionality
> does require the VMCOREINFO entries to extract/dump the log, and exit.  Honestly I wish
> I had never even introduced that feature.  And I wonder if it were deprecated,
> would anybody care?
> 
> However, your question is highly relevant to the makedumpfile(8) facility
> for its "makedumpfile --dump-dmesg" option.  Since it doesn't have the
> luxury of a vmlinux file, it needs all of the VMCOREINF_xxx items.  Kazuhito
> Hagio is the makedumpfile maintainer, and since he is the primary customer
> of the VMCOREINFO entries, he would be a better person to answer your
> question.
> 
> That being said, due the sheer number VMCOREINFO entries required, I like
> your idea of providing a single version number.  But I defer to Kazu for
> his preference.
> 
> Thanks,
>   Dave
> 
> 
> 
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
