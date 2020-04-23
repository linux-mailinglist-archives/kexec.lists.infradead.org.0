Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DABB01B5F04
	for <lists+kexec@lfdr.de>; Thu, 23 Apr 2020 17:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JDkT+CGL/qyc8O+uHPdtYt6vgkvWWEqEpIdABhAY1I=; b=rPGhZcfQ8i0/0I
	oqQHMALzEYOwdev57zYwbbvbYvJEBVEVx7oQ7xEXGM90QeR7lBaebJdA7lAQ2nMulVq/6EEXfbQHs
	MHlu+TxFSJ7RSSN7zvCipuyzlPefngi43drVJXfPM3WMXVbx3Yf6EOi4PjTyBOOhQD1PCetuS9krc
	7DYhYIFr8VP1LRdgfr5qclSIk4SU4fTR1JsCkn6d25fFywB7e8NWykp/lLquiOp5aWQOP3ACY0M8j
	wuPuEIxuEYi2x3VDf88MpAKAWprDohlUP/1rVaKZJMpv/q/1px+kCMXadqSPFdRQaCphDvSTpm7lY
	nKwOBy1d2PAfwx+0fakw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdhI-0007eK-IT; Thu, 23 Apr 2020 15:23:28 +0000
Received: from mail-eopbgr1400045.outbound.protection.outlook.com
 ([40.107.140.45] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdhF-0007dh-8R
 for kexec@lists.infradead.org; Thu, 23 Apr 2020 15:23:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fbe6nmkTIZroYM4C7Gu5V0TunggxArOznMSdbaByHKN5NdR6ZzIvg1Yv49kAJQvIQ2v5+wepaM+frMJi7Ij3nvBKhOlyAbrQLUl8YRkZho6DlYCEA9pwV/1UTXTYZ5IvoDnUZ3zBxGICRQSjFSufRypQJ9MNtSKgKpJfgiC+1nW+B0vDEN7afXNmh4U9YuullXl56K+W0PQEtUPS8BYsjwEaoT95RNIV2949rUva/wlR6thJLRnRdsUW2Lc7dvrtBFum9i6CyKKCGd4/EAMWyustr1NihQEA4igPL45u79TPoACufzErlt/l0zwaHImBPBLXQI37nvtZ4YC0+awlCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cWiF6nFHQBnmX6quREOVHLEXOqLEn+h0n8ae6e8MF7M=;
 b=mgTcJOPYSW+Msq5Qz5w/NH4PIsTyw3Vm800SiLqisECfWCKrl0MisT1YtgC5geTPfNvCPNV/IQ2MOBuDsYwS6jQ6b9YSWgpXGgDxyfYx4FnummA5GK3EdAkwiwrUr9SF2hxenIieK/1yz7ABfqbhCNqdmkZ3Gt/4QHzqfFWjLh2jR+1Oitkncu43kyHsjW20IfwO/Y2bLkzluNwr06dOLJ79bJKuSCuATUf+nM5zOviwqcPq+rFdFVsHLBq8RFMyHzPg+AwnfKANxej8GH+IewAEPG4oaCmQngR2ZOAjg0z9q24Pj+jJ1qBWK7Hz5rshh2gjft/xpDyzlvAdfvlDzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cWiF6nFHQBnmX6quREOVHLEXOqLEn+h0n8ae6e8MF7M=;
 b=wQDZQ/VxziM1U0lM0uPsiKi/nQcrpyFCV49oYjJZCgM9tGKy68s/xO8WxuoXGQ8lp+JDgGw8+CfDa6TQpiFH8VlgWu3bFKnQAuKvJlU1iwJvYgpkouo5E/Exg3Ud3XCF2wTxMob48iP5WwAz4nAZrh1gPcieTg4xM05ighLIq8c=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (52.134.241.23) by
 OSBPR01MB2199.jpnprd01.prod.outlook.com (52.134.240.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Thu, 23 Apr 2020 15:23:21 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 15:23:21 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: Dave Anderson <anderson@redhat.com>
Subject: RE: [Crash-utility] new printk ringbuffer interface
Thread-Topic: [Crash-utility] new printk ringbuffer interface
Thread-Index: AdYZequwvAGFPWjgQQyF0VtkXo6MXUxNWuXETEtEHDA=
Date: Thu, 23 Apr 2020 15:23:21 +0000
Message-ID: <OSBPR01MB1991CB3EC9C98B2387C61A1EDDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
References: <OSBPR01MB19916965DAEB1238FEB962F6DDD30@OSBPR01MB1991.jpnprd01.prod.outlook.com>
 <421536467.24687472.1587652980905.JavaMail.zimbra@redhat.com>
In-Reply-To: <421536467.24687472.1587652980905.JavaMail.zimbra@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9236d10c-71d6-4032-f73d-08d7e79a423c
x-ms-traffictypediagnostic: OSBPR01MB2199:
x-microsoft-antispam-prvs: <OSBPR01MB2199DBFA210804CAFC62D338DDD30@OSBPR01MB2199.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(478600001)(33656002)(2906002)(86362001)(66476007)(66446008)(64756008)(6916009)(66556008)(186003)(76116006)(4326008)(66946007)(52536014)(5660300002)(316002)(54906003)(71200400001)(85182001)(55016002)(8676002)(26005)(6506007)(81156014)(9686003)(8936002)(7696005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sQOXvlpm7dHqEW1Ho5gjyFfmKuPBjpoWwdv+fLkRVKir7/xq6urt1eRdb0b9HmI5QcTj0f7dmvV5L22q94T+jrXQmGgX5lYRn6H3MVSCVzAdmjzhadl9SsVKqwSSRF3K2rHMVcifcWi+MPRx2V+54BY5whnLrcZr7OSQPg9USomBjsib4zWpmBlOFAk7ljnmIZUWSx7VFHBw40uDGjrMOT4Fr28RYhpq02bMxn+jCigYb6eLWAvzvjI89khTPTjryekTHn1GpcH60p2mG9HrM1u9pUfM+oq37kdcFx687/8KoqNCGGTHqZxpkNM5amd2bYZbiHRSfmqJMnV4RfClI/+l+hsWafBx68NA8V7oxq8jAuT6F8q0zJbMe2XG+sx9X5+QIKog510sYXtYIpLx84AhWhJgVX9EZeNPN1U22LEUr8DG8dtIy4WXyoQe1INR
x-ms-exchange-antispam-messagedata: NC0wHS4+WnMtG3DVFRJlsLAaL6saNbVMh3fydegCtbuI7YhovnmRxOEI/jeEqFin0lKKG5d9xAZEItvPyGEQf9EBuMH5UKdFOO6852ClApaNZp5nlK2Ef270fN/X5QlZSynk3cu5OQEX8dfhWaNafA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9236d10c-71d6-4032-f73d-08d7e79a423c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 15:23:21.6467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MrSTtoys73vkGW6uH1zQSo4+UEs5wABKjDkTvzVFH59Ou0nYMgRPLFcMS8j2XGz4Y6Vr1sZXYHtw1A8EujMkyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB2199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_082325_302450_A01D7EC7 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.45 listed in list.dnswl.org]
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "Discussion list for crash utility usage,
 maintenance and development" <crash-utility@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> ----- Original Message -----
> > ccing kexec list, vmcore-dmesg also uses vmcoreinfo related to printk..
> >
> > > -----Original Message-----
> > >
> > > ----- Original Message -----
> > > > Hello Dave,
> > > >
> > > > You may or may not be aware that we are working on replacing [0] the
> > > > Linux printk ringbuffer. Rather than a single buffer containing a single
> > > > struct type, the new ringbuffer makes use of several different structs.
> > >
> > > Yes, I am most definitely aware...
> > >
> > > >
> > > > I am writing to ask your advice about how this should be exported for
> > > > the crash utility. Should all struct sizes and field offsets be
> > > > exported? It would look something like this:
> > > >
> > > >         VMCOREINFO_SYMBOL(prb);
> > > >
> > > >         VMCOREINFO_STRUCT_SIZE(printk_ringbuffer);
> > > >         VMCOREINFO_OFFSET(printk_ringbuffer, desc_ring);
> > > >         VMCOREINFO_OFFSET(printk_ringbuffer, text_data_ring);
> > > >         VMCOREINFO_OFFSET(printk_ringbuffer, dict_data_ring);
> > > >         VMCOREINFO_OFFSET(printk_ringbuffer, fail);
> > > >
> > > >         VMCOREINFO_STRUCT_SIZE(prb_desc_ring);
> > > >         VMCOREINFO_OFFSET(prb_desc_ring, count_bits);
> > > >         VMCOREINFO_OFFSET(prb_desc_ring, descs);
> > > >         VMCOREINFO_OFFSET(prb_desc_ring, head_id);
> > > >         VMCOREINFO_OFFSET(prb_desc_ring, tail_id);
> > > >
> > > >         VMCOREINFO_STRUCT_SIZE(prb_desc);
> > > >         VMCOREINFO_OFFSET(prb_desc, info);
> > > >         VMCOREINFO_OFFSET(prb_desc, state_var);
> > > >         VMCOREINFO_OFFSET(prb_desc, text_blk_lpos);
> > > >         VMCOREINFO_OFFSET(prb_desc, dict_blk_lpos);
> > > >
> > > >         VMCOREINFO_STRUCT_SIZE(prb_data_blk_lpos);
> > > >         VMCOREINFO_OFFSET(prb_data_blk_lpos, begin);
> > > >         VMCOREINFO_OFFSET(prb_data_blk_lpos, next);
> > > >
> > > >         VMCOREINFO_STRUCT_SIZE(printk_info);
> > > >         VMCOREINFO_OFFSET(printk_info, seq);
> > > >         VMCOREINFO_OFFSET(printk_info, ts_nsec);
> > > >         VMCOREINFO_OFFSET(printk_info, text_len);
> > > >         VMCOREINFO_OFFSET(printk_info, dict_len);
> > > >         VMCOREINFO_OFFSET(printk_info, caller_id);
> > > >
> > > >         VMCOREINFO_STRUCT_SIZE(prb_data_ring);
> > > >         VMCOREINFO_OFFSET(prb_data_ring, size_bits);
> > > >         VMCOREINFO_OFFSET(prb_data_ring, data);
> > > >         VMCOREINFO_OFFSET(prb_data_ring, head_id);
> > > >         VMCOREINFO_OFFSET(prb_data_ring, tail_id);
> > > >
> > > > Or would it be enough to just recognize the new "prb" symbol and have
> > > > all the structures defined in the crash utility? If the latter is
> > > > preferred, should some sort of version number be exported? Or is the
> > > > kernel version number enough?
> >
> > first I don't think we can depend on the kernel version because distribution
> > kernels backport upstream patches.  So we will need a version number of the
> > ringbuffer if we choose that way.
> 
> With respect to the kernel version, you are absolutely correct, as we've been
> burnt by that before with backports to distribution and the upstream longterm
> kernels.  But I think John was talking about exporting a printk-structure-set
> version number, so I think we're on the same page.
> 
> Also, if we go the version-number route, there would still not be a requirement
> for the crash utility to duplicate the kernel data structures in its sources.
> As John's proof-of-concept patch showed, it can still use the traditional
> manner of getting structure sizes and member offsets.  With the version number
> exported, there may have to be a few small adjustments in the MEMBER_OFFSET_INIT()
> calls, but it would be fairly straight-forward to maintain.
> 
> But of course makedumpfile would have to replicate the kernel data structures.

Ah, indeed.  I vaguely thought makedumpfile also might be able to do like crash
by setting sizes and offsets for each version..  But it will be hard to set them
manually for every architectures.  I'll think about it more.

Thanks,
Kazu

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
