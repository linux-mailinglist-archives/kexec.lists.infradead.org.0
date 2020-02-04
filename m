Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B1F1521D0
	for <lists+kexec@lfdr.de>; Tue,  4 Feb 2020 22:18:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cg7oZbnFI0Ca06pV4Ifr5xhvtLnBGnWhSBxOFJoer3Y=; b=t+VvfcswjWolKS
	tCO1FnXg4wd2b7uYpxezi/Ar8fyLCHdq0K7P7PZVc9BEMQYcXNO9uuX3IuWJsOdD3JynHHfNo6akn
	y30mMd+FHZaccKUcTuoHV70oxEI1+BO5VUeWO0YE4R1bO7V7FijP/a+0MgqXg2XGrtliWCEpvXPrX
	U2BLTYVQ7dlPP2XUL+VZs+nCa7xXYCXxJ2WJFGRgsDQO72NF3agJNwga+Iz6G4vYXVU1Pb7ROECv7
	0kt1L8hQvd0C2r09jsA+VWIr31ZBdvquDwlTrk9MPPbeoH+1KV12FKp+D1TWY7WxbYBDwwc68arM5
	3Bp2m1/6ZUKo5vGu5QKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz5ab-0004Cv-46; Tue, 04 Feb 2020 21:18:33 +0000
Received: from mail-eopbgr1310041.outbound.protection.outlook.com
 ([40.107.131.41] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz5aU-0004CR-6l
 for kexec@lists.infradead.org; Tue, 04 Feb 2020 21:18:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=huAMXPPn7x3jF1Baj62UFjyxujMLZbTvUIm2bWFDyvk47LDAFUm1yeTL8hLBqhRqa5+2vcH3Y5A2D7DJrVX54LNp6EXpqD6Hda+2wchi7SHCrdsA7/b7QNxF5xRJoU8TQDXA93UpeRxax33aXBHQpyW8vkVLyjyzFFrvHitc8a21ytGjamBBx+tdV2VJgBqme4Iam93XwPTbXcafA2VOlpl66eWpIhQNRxBat8CBSXN6V5bxcignRRdC+zrfcdacNjvduFFvR3ZmFs2afgjOvzmkdMjM323NRM3ySA62Qqy98oD4lGR45VWmIEMvW5/Utj4Mm+f0iGxqeNAb2P6b5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VDP4G4d9+0+LgYqsc7nqC5nNqtZIDOjHDU0NLlxTC2k=;
 b=U+XQ2DzLIdksXgwbu+u1xoZBY6tjmC4wqeJSEKDgWuuLTOGZ+qvpecm8XVinVZO776EqHXnP9tlAMQod7qxdnTuxwxFgIXOAD+Ij5tW8Vlp5GRV/DI+gLBl5+jzi7AdgXv1Z3nFkDzu4IwqmkKvQXE5mP9uAarNJ5znzWmoSeAsnbZ0P2pQDJK6a4hLf2Y5qSnxP1UUUuUS48y7VBp+d8D+ZNFLId9eBpupVHjCcCMWwCDPgkbPexLxYmPx/nfJYqFn7oowag2Vrcu1WRUzIKbCaLP0c5S5V/Ysck1JUyg7+Ml55gIhZqtalf81L7LWtCTRejgcMf8+dGFvAjD8pVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VDP4G4d9+0+LgYqsc7nqC5nNqtZIDOjHDU0NLlxTC2k=;
 b=srzAylxSe5VGrMtsd1CfaGdlgd4TXgpz4PTdLLZWAXo1U1OwtYmjz1CtSMG2TzHxrIEPnGjRkLO4puf+1yoaEc5OWK3zvDLsMq5Xc+Ly/QN5fwDspbwNL9eyFGDVG0lH7szCQAXgt+f9VdJgY4FzcdJUUxUJAl+Nkf84dhHmlqE=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB2396.jpnprd01.prod.outlook.com (20.177.98.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Tue, 4 Feb 2020 21:18:14 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89%4]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 21:18:13 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>, piliu
 <piliu@redhat.com>
Subject: RE: [PATCH] makedumpfile: cope with not-present mem section
Thread-Topic: [PATCH] makedumpfile: cope with not-present mem section
Thread-Index: AQHVzzjxMLXncz5rgU2tzBmjVtM4QafzOgIAgAAHWICAABBDgIAFJqZQgAZRDICAABE7gIABbiuwgAA8WwCACiPygIAAR2sAgABpuDA=
Date: Tue, 4 Feb 2020 21:18:13 +0000
Message-ID: <TY2PR01MB52108AD0131515408592E08CDD030@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa> <20200127180627.GB4080@calabresa>
 <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200128193302.GC4080@calabresa>
 <5cd8e190-8be6-41cd-c43a-c38043c14b3f@redhat.com>
 <20200204103954.GH40679@calabresa>
In-Reply-To: <20200204103954.GH40679@calabresa>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.233.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35214390-dccd-45b0-fdef-08d7a9b7beb6
x-ms-traffictypediagnostic: TY2PR01MB2396:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2PR01MB239651F3C630A5A8716AAECFDD030@TY2PR01MB2396.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03030B9493
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(396003)(376002)(366004)(199004)(189003)(76116006)(66946007)(71200400001)(66556008)(66446008)(66476007)(54906003)(110136005)(52536014)(8936002)(81166006)(81156014)(86362001)(64756008)(5660300002)(8676002)(7416002)(26005)(186003)(53546011)(9686003)(55016002)(316002)(6506007)(85182001)(33656002)(7696005)(2906002)(4326008)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB2396;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AcQOOeENAmRYoDBzLWO4AP8VactLsp+yhru9WjnV0jkSVO4/rB6e1lJsZUJOoygB4fXnmE+Hd8QvLXZvAapDQIOX+izMZLix+04TWjcxV4hAFh4zyv21HlYQIuIzxZWgkc/mtnxllCZ5W86acs0XX/BMkIvZz8xyYVcXF2le07v3cOVjWcjyw7WTN9SqJb3BFZENeGo1VkwT2PXbRcm7rZKJvt8TT5e8se0o11epD3lNaUVD2PbOP/kQJUlxWSbWWa+Q2BbEykpebln/mcu7spDgxb1/ST34xko0GhxzVVu03zb7KopUMZ66VT2iYB1JJWGSzpY28u8ALlh6+6mNoM0S6DGUftxCah3w9P9XVdkJGXvrc/eIGlIS1VDSLh9ugks6LYquJN2Ug+/4n0DFNnf7QTgjgQKZJNUpakPHt558T9D223e6uZZZxNZH7wls
x-ms-exchange-antispam-messagedata: +b2YsTU0Tmnwx+ucTLRO/EGITXT9wCsSai52e/7XqLYQtwjQosM+bI/VsUF91AJ/BCknpS9D0vD8aQE7zEGDQxNdEtXUOcJe+rVqYRa5W+QGz2L2L79gWT9dyUHlQQX8G3Pwn59hZNT8xQk5CY2Jaw==
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35214390-dccd-45b0-fdef-08d7a9b7beb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2020 21:18:13.8788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: st9gUDg9NlC3CnyGxVXZhKcGu7fgwhQHov/6CT7UHCuE7IcQW8nsUfFLMfUd/bQbgFV0OY2Je+cA4k/BtrmLyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB2396
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_131826_311052_642E773B 
X-CRM114-Status: GOOD (  40.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.131.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Baoquan He <bhe@redhat.com>, David Hildenbrand <david@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> On Tue, Feb 04, 2020 at 02:24:17PM +0800, piliu wrote:
> > Hi,
> >
> > Sorry to reply late due to a long festival.
> >
> > I have tested this patch against v4.15 and latest kernel with small
> > modification to meet the situation we discussed here. Both work fine.
> >
> > The below is the modification of two kernel
> >
> > test1. latest kernel with two extra modification to expose the problem
> > -1.1 reverts commit 1f503443e7df8dc8366608b4d810ce2d6669827c
> > (mm/sparse.c: reset section's mem_map when fully deactivated), this
> > commit work around this bug
> > -1.2. reverts commit a0b1280368d1e91ab72f849ef095b4f07a39bbf1 ("kdump:
> > write correct address of mem_section into vmcoreinfo"). This will create
> > a buggy situation as we discussed here.
> > -1.3. fix building bug due to revert
> > a0b1280368d1e91ab72f849ef095b4f07a39bbf1
> >
> > test2. v4.15, which include both commit 83e3c48729d9 and a0b1280368d1.
> > -2.1. revert commit a0b1280368d1e91ab72f849ef095b4f07a39bbf1 ("kdump:
> > write correct address of mem_section into vmcoreinfo")
> >
> > So I can not see any problem with my patch.
> > Maybe I misunderstand the discussion, but I can not see my original
> > patch will break the kernel which have 83e3c48729d9 but not a0b1280368d1.
> >
> > Thanks,
> > Pingfan
> >
> 
> You also need to test the case where 83e3c48729d9 is not present at all. Can
> you test on a 4.4 kernel, for example? As far as I understand, a vanilla 4.4
> kernel would not be dumpable with your patch.

As far as I've tested this patch with SPARSEMEM_EXTREME vmcores below, it's OK:
  - 51 vmcores of vanilla kernels (each from 2.6.36 through 5.5) on hand
  - one more vanilla 4.4.0 kernel with a different config from the above

So apparently not all vanilla 4.4 kernels are affected by the patch.

> 
> Thanks.
> Cascardo.
> 
> > On 01/29/2020 03:33 AM, Thadeu Lima de Souza Cascardo wrote:
> > > On Tue, Jan 28, 2020 at 05:03:12PM +0000, HAGIO KAZUHITO wrote:
> > >> Hi Cascardo,
> > >>
> > >>> -----Original Message-----
> > >>> On Mon, Jan 27, 2020 at 02:04:54PM -0300, Thadeu Lima de Souza Cascardo wrote:
> > >>>> Sorry for taking too long to respond, as I was on vacation.
> > >>>>
> > >>>> The kernels that had commit 83e3c48729d9, but not commit a0b1280368d1, are
> > >>>> not supported anymore. In a way that it's even hard for me to test them.
> > >>>>
> > >>>> However, I managed to test it, and those two lines are definitively needed
> > >>>> to dump a VM running such a kernel. Is removing them really needed to fix
> > >>>> this issue?
> > >>>>
> > >>>> Otherwise, I would rather keep them.
> > >>>>
> > >>>> Thanks.
> > >>>> Cascardo.
> > >>>
> > >>> By the way, I was too fast in sending this. We really need to keep those lines
> > >>> as makedumpfile will fail to dump a 4.4 kernel with this patch as is.
> > >>
> > >> Is that Ubuntu 4.4 kernel which has 83e3c48729d9 and not a0b1280368d1?
> > >> Could you elaborate on how it fails?
> > >
> > > No, it doesn't have either, so my guess is it would fail on upstream 4.4 as
> > > well, so anything that doesn't have 83e3c48729d9.
> > >
> > > That's what I get on that 4.4 kernel (4.4.0-171-generic):
> > >
> > > # ./makedumpfile /proc/vmcore ../dump
> > > get_mem_section: Could not validate mem_section.
> > > get_mm_sparsemem: Can't get the address of mem_section.
> > >
> > > makedumpfile Failed.
> > > #

Thanks for the infomation.
I guess that your 4.4 kernel and machine get a false-positive result (TRUE)
from the second validate_mem_section() with this patch, right?

If we don't have a way to exactly determine whether a mem_section is real
or not, we might have to accept some tradeoff here.  For example, a workaround
which I think of is something like this:

ret = validate_mem_section(SYMBOL(mem_section));
if (!ret && is_sparsemem_extreme()) {
  ...
  ret = validate_mem_section(mem_section_ptr);
  if (!ret)
    ERRMSG("Could not determine the valid mem_section.\n");
}

with Pingfan's patch.  This will work for the false-positive fail you hit (if so),
but may affect some downstream kernels which have 83e3c48729d9 and do not
have a0b1280368d1.  But at least there is no upstream kernel like that.

Any other solution?

Thanks,
Kazu

> > >
> > > So, now, I have a better grasp of the whole logic, and understand why it fails
> > > with this patch.
> > >
> > > So, we need to either interpret the mem_section as a pointer to the array of a
> > > pointer to the pointer to the array. The only case the second option is valid
> > > is when sparse_extreme is on, so we don't even need to check the second case
> > > when it's off.
> > >
> > > Then, we check that interpreting it either way is valid. If it's valid in both
> > > interpretations, we can't decide which to use, and will fail. So far, we
> > > haven't seen any case in the field where that would accidentally happen. But in
> > > case it does, we should rather fail to dump and fallback to copying, than
> > > creating a bogus compressed dump.
> > >
> > > When this patch is applied, a kernel which does not have 83e3c48729d9, and
> > > thus, has mem_section as a direct pointer to the array, it so happens that we
> > > don't detect the pointer to pointer to the array case as invalid, thus failing
> > > to dump.
> > >
> > > The way we validate is that the mem_maps should either have the PRESENT bit or
> > > be NULL. Now, that assumption may be invalid, and we would need to do the
> > > validation some other way. I can test the cases where that assumption is
> > > invalid in a 4.4 kernel and see how to fix this in a satisfactory way.
> > >
> > > Going through the code once again, I don't see how the second section of the
> > > patch would be correct by itself too. I will think it through a little more and
> > > see if I can come up with a solution.
> > >
> > > Regards.
> > > Cascardo.
> > >
> > >>
> > >> I'm thinking that Pingfan's thought may help:
> > >>>> I think it could be if/else, no need to call twice.
> > >>
> > >> Thanks,
> > >> Kazu
> > >>
> > >>>
> > >>> Cascardo.
> > >
> >
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
