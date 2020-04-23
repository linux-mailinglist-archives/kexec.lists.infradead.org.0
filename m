Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBF21B6469
	for <lists+kexec@lfdr.de>; Thu, 23 Apr 2020 21:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7PPQGaHKRUPnbhXNtI2PazM0fdZqsTnIjQC+ngppC8=; b=adw2T2wo5aubOC
	Pui3dXazjriXmM1oWrrJTx0/qR5l2DVjWyrNeQhyxFqQ/w2O3vq6QsgklUv2QfQ58/WKL4cXtIMQe
	ENzHx6fcAInCT3zHdglDdfdt/6NfXpB/KoK7hq/aRPVoH3udmNp7j9pFGgwtaMzazHtry6MbMOD/3
	FOjEFnRu0+c/zO/0zhwwY/8jI+K4efGJvUcWidF0wEdfIOGk79CBzremy8rBX8Vj0u4VTO7faKLm9
	Kg8pl6jOTwfC/IUXekIMM3YPwvvy2RwAn3cYsa6+C7R4eZjoQvyZsmMBGWE9l4POkJE1Qb954UlHT
	Ppk3wma3VWZ06006+SjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRhPY-0002KP-R9; Thu, 23 Apr 2020 19:21:24 +0000
Received: from mail-eopbgr1410051.outbound.protection.outlook.com
 ([40.107.141.51] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRhPV-0002EQ-PH
 for kexec@lists.infradead.org; Thu, 23 Apr 2020 19:21:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0bnt4fMS9GzA6Ii1m+dfpRj/bZYe4VeOCBjtdf9Ktth1QQkmX8LqDP8sEEHqLL9cCTDMCL6LyXm/QbquirbQ0ou1TaEDPUm5mM+ysxzr3t9Tc4JCmGvhxri9xG0T+aetvKCE+NL1nNa9Fam/DUGStF9+4B+2q9Qi+9pDyqS8Ez3hTWmUVrQv4e5pKV4TX34IVMCdVvpwBDv6qajx1ibd01kBCchhe+jwKF1wK2CWJVrjAiNQFDAtRwRqKGMZM9lTwF1KQzFKb7dxRtdSfQ++ggmm6cn2iJbLGjPwGifZGpPWK+CmxGWA3VWv8g38vTywfM62JhqhwsHTVg0yExMOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s56Wdc76VhTc9DGz8/jCYO2ZNcJdazVNKoQgay35XEw=;
 b=CFCAAbLzUHHw4LE6eJtbb5wxQfrQJV0dWS6DMbwhUmMngd+g5NZh8ASVe7I9tjNZZ3E9r8xUhTMaL+9txwThju5etuv+3KBYvXXXDxy5eyaH6xXqFRhCYlJTLJaoNQgjYnxR87txN74HV8xiF8FbqPhXzfJq2wxj0crhbYk8daBtX63LRFJpA8r4uOTc2U93jWn8UgrJieOur8IDb5oAiAYY+z3cnX2T1syJn4L18eHlrx1JLN5/ymgef6o8PrPEYE2vi52tk8PP8yeNZRFn6maf/wvlCA5yz1ISyqrRaalPdd2SdnGOowaBUfrmYc6KjY6fCW/ZBoFbwTkW0RfZVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s56Wdc76VhTc9DGz8/jCYO2ZNcJdazVNKoQgay35XEw=;
 b=eQxh2l29h1cbKxaZPrPJRvUEOB0bEe+xtnbn8loH9RleXDBNCi3paq4iCaCPBxpsdUDzcd5otpktzJu9zvNPIirf7KJEjcXirV75gU53h8lQQZhraoeVnTx2PEKpWk7KE7rSCFfZYfDtrKR2JOflzQmMuqOdRhAToOus3j/zTRw=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (52.134.241.23) by
 OSBPR01MB2391.jpnprd01.prod.outlook.com (52.134.254.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Thu, 23 Apr 2020 19:21:14 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 19:21:14 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: Dave Anderson <anderson@redhat.com>
Subject: RE: [Crash-utility] new printk ringbuffer interface
Thread-Topic: [Crash-utility] new printk ringbuffer interface
Thread-Index: AdYZequwvAGFPWjgQQyF0VtkXo6MXUxNWuXETEtEHDCExK3C4A==
Date: Thu, 23 Apr 2020 19:21:14 +0000
Message-ID: <OSBPR01MB1991F08228D7E9BDBEF07105DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
References: <OSBPR01MB19916965DAEB1238FEB962F6DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
 <421536467.24687472.1587652980905.JavaMail.zimbra@redhat.com>
 <OSBPR01MB1991CB3EC9C98B2387C61A1EDDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
In-Reply-To: <OSBPR01MB1991CB3EC9C98B2387C61A1EDDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4fd878b5-38e1-454f-972c-08d7e7bb7d39
x-ms-traffictypediagnostic: OSBPR01MB2391:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB239149F4B3BC28763F12331FDDD30@OSBPR01MB2391.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(366004)(136003)(66556008)(2940100002)(64756008)(66476007)(66446008)(66946007)(81156014)(85182001)(4326008)(86362001)(71200400001)(7696005)(26005)(76116006)(478600001)(2906002)(54906003)(8676002)(316002)(6506007)(5660300002)(52536014)(186003)(33656002)(6916009)(9686003)(55016002)(8936002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AtMoC7PFX0GTdljFgP4xfJwABbJp1FsIdwXXeBb+LEwDWxTgCrgmFnF9ltm6O2G6lt6Mbd5gE78uxk8YnWkAvKz22KBhdfhMYBESERQC6yBj5d/feLKXHUGVvqqOYbrfn2MZ2SSrqZRO82AWr/huLcuAk2TEc9akbZ4WCJm9WtRHD1A7CXJ8AlaoDl2Lj5PGueLFEQYZzGm7EhVdJ+pJN8i2exTSxg953ov5THnlzuJ1M6ZBXWBK0i409eETN+Nn4sADAqq0Duh7kmy9Z0vHixzqwdPUyR+kn9VEWDhHNDIu9A727TbSP5yiTuHDKqoDEIK9CgzmvSJKuzGWTZqi3/Tbui2wtK/HWxBKKqxIqW9MZ96EMzWFZAfzFGrhSBjIqTq3j41nKLxMUESzwxufAJry3gL9jyda3RXY3/F4ir3KeTSHAxN5jSRCcZJOgOey
x-ms-exchange-antispam-messagedata: hqe5pMwRUUw2AlVC/ECuT1wp7iVW1g6ZqXI+f9M0lRu8zt6W6jCdHxZFreeaqWYWECGir8LwF6vi0qcF3N2bi3scaU9hwJl/lv1Z7smmC0YEh/GEBuHnx4YYJ2tXUKEcZ3UQNQx+UJLNlMIJQ5QSfg==
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fd878b5-38e1-454f-972c-08d7e7bb7d39
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 19:21:14.1341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: euMkwM6snZjthTD15wRIIuqFCTwgvxZr7tdWxLOhMoQ6qyZv8iZec93jKK6wv/ak6RwhQmPUZYZFCn3TZPqypg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB2391
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_122121_874754_DB10AB09 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.51 listed in list.dnswl.org]
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>, "Discussion list
 for crash utility usage,
 maintenance and development" <crash-utility@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> > -----Original Message-----
> > ----- Original Message -----
> > > ccing kexec list, vmcore-dmesg also uses vmcoreinfo related to printk..
> > >
> > > > -----Original Message-----
> > > >
> > > > ----- Original Message -----
> > > > > Hello Dave,
> > > > >
> > > > > You may or may not be aware that we are working on replacing [0] the
> > > > > Linux printk ringbuffer. Rather than a single buffer containing a single
> > > > > struct type, the new ringbuffer makes use of several different structs.
> > > >
> > > > Yes, I am most definitely aware...
> > > >
> > > > >
> > > > > I am writing to ask your advice about how this should be exported for
> > > > > the crash utility. Should all struct sizes and field offsets be
> > > > > exported? It would look something like this:
> > > > >
> > > > >         VMCOREINFO_SYMBOL(prb);
> > > > >
> > > > >         VMCOREINFO_STRUCT_SIZE(printk_ringbuffer);
> > > > >         VMCOREINFO_OFFSET(printk_ringbuffer, desc_ring);
> > > > >         VMCOREINFO_OFFSET(printk_ringbuffer, text_data_ring);
> > > > >         VMCOREINFO_OFFSET(printk_ringbuffer, dict_data_ring);
> > > > >         VMCOREINFO_OFFSET(printk_ringbuffer, fail);
> > > > >
> > > > >         VMCOREINFO_STRUCT_SIZE(prb_desc_ring);
> > > > >         VMCOREINFO_OFFSET(prb_desc_ring, count_bits);
> > > > >         VMCOREINFO_OFFSET(prb_desc_ring, descs);
> > > > >         VMCOREINFO_OFFSET(prb_desc_ring, head_id);
> > > > >         VMCOREINFO_OFFSET(prb_desc_ring, tail_id);
> > > > >
> > > > >         VMCOREINFO_STRUCT_SIZE(prb_desc);
> > > > >         VMCOREINFO_OFFSET(prb_desc, info);
> > > > >         VMCOREINFO_OFFSET(prb_desc, state_var);
> > > > >         VMCOREINFO_OFFSET(prb_desc, text_blk_lpos);
> > > > >         VMCOREINFO_OFFSET(prb_desc, dict_blk_lpos);
> > > > >
> > > > >         VMCOREINFO_STRUCT_SIZE(prb_data_blk_lpos);
> > > > >         VMCOREINFO_OFFSET(prb_data_blk_lpos, begin);
> > > > >         VMCOREINFO_OFFSET(prb_data_blk_lpos, next);
> > > > >
> > > > >         VMCOREINFO_STRUCT_SIZE(printk_info);
> > > > >         VMCOREINFO_OFFSET(printk_info, seq);
> > > > >         VMCOREINFO_OFFSET(printk_info, ts_nsec);
> > > > >         VMCOREINFO_OFFSET(printk_info, text_len);
> > > > >         VMCOREINFO_OFFSET(printk_info, dict_len);
> > > > >         VMCOREINFO_OFFSET(printk_info, caller_id);
> > > > >
> > > > >         VMCOREINFO_STRUCT_SIZE(prb_data_ring);
> > > > >         VMCOREINFO_OFFSET(prb_data_ring, size_bits);
> > > > >         VMCOREINFO_OFFSET(prb_data_ring, data);
> > > > >         VMCOREINFO_OFFSET(prb_data_ring, head_id);
> > > > >         VMCOREINFO_OFFSET(prb_data_ring, tail_id);
> > > > >
> > > > > Or would it be enough to just recognize the new "prb" symbol and have
> > > > > all the structures defined in the crash utility? If the latter is
> > > > > preferred, should some sort of version number be exported? Or is the
> > > > > kernel version number enough?
> > >
> > > first I don't think we can depend on the kernel version because distribution
> > > kernels backport upstream patches.  So we will need a version number of the
> > > ringbuffer if we choose that way.
> >
> > With respect to the kernel version, you are absolutely correct, as we've been
> > burnt by that before with backports to distribution and the upstream longterm
> > kernels.  But I think John was talking about exporting a printk-structure-set
> > version number, so I think we're on the same page.
> >
> > Also, if we go the version-number route, there would still not be a requirement
> > for the crash utility to duplicate the kernel data structures in its sources.
> > As John's proof-of-concept patch showed, it can still use the traditional
> > manner of getting structure sizes and member offsets.  With the version number
> > exported, there may have to be a few small adjustments in the MEMBER_OFFSET_INIT()
> > calls, but it would be fairly straight-forward to maintain.
> >
> > But of course makedumpfile would have to replicate the kernel data structures.
> 
> Ah, indeed.  I vaguely thought makedumpfile also might be able to do like crash
> by setting sizes and offsets for each version..  But it will be hard to set them
> manually for every architectures.  I'll think about it more.

makedumpfile has some architecture or kernel version specific values in it and
switches them by conditions, but the reason why we can do this is that they are
mostly constants that rarely change and can be got from the kernel source easily.
With respect to structure sizes and memger offsets, I don't think of a way to do
this easily.

And then if we define all the structures in makedumpfile with the version number,
how can we implement them and switch for each version?  The new ringbuffer is
structured very much, I cannot imagine that it can be handled efficiently.

Any ideas?

If there is no efficient way, we will need all of the entries in VMCOREINFO.

Thanks,
Kazu


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
