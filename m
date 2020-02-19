Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6FB164FA1
	for <lists+kexec@lfdr.de>; Wed, 19 Feb 2020 21:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvCpWreXhMoOn0hSI7iG0AgiZM5WYwhFpj4l2HvNbX4=; b=PKf1KSGqwtZl/g
	DLpt8oyGlVRVdBqu77KRMvYEqVoyQRgeLkYB4l0s1ZICx5BNUFHKJrfCdjNETI1ib6YSnS1+5vDDU
	oR9HyasO/FoMh+ut4v9aECP9s+qyTbsys7TYwkoqSG5pPKNZSzNIen/jRbuRZFElUaJoUjPOYx16B
	j+ox9ES10xq/11AqwTAFNg8s3d0CiaqPjAJErtDIdOIImbFgmCUC57Xrs9sst0ro3FRN/TiMf96Zs
	6PGIiXT8O4Kfb11ErQ3lLvmHmJLxGHR8w063mrxki33CIIG6XDZFBp5z1SwFmqBT/hnMLIkZBk+1P
	cLyLUfzmzswx2vKkk39A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ViN-00034G-4p; Wed, 19 Feb 2020 20:12:59 +0000
Received: from mail-eopbgr1310085.outbound.protection.outlook.com
 ([40.107.131.85] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ViI-0002To-Bi
 for kexec@lists.infradead.org; Wed, 19 Feb 2020 20:12:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJDvcMR95pGKnEwVQJDabaCAmWvrQW4k/6dEivWg+26lqv2EAl5DwA9FZNv2bhtD1tEqZnyuyx963id5nXPRfIJ2OyXE55m7aiPvuVQgsTKkJLOzR9poTF94tEAmzF6JJReMTXoGIrQ59A8neYGrnbyKJPw2uUudMN2lJ7mMebSE6IC+30HqHcqu/J9FErnC0IVHcQ7OzqdlA0ujmphImIerwlieyBIJrWvSthE0pNdqTDI0UGNgoZ3DZ3y6Vu7fgRkBSG9uFAuRcnZ5mSE55IwDz9XR3NVHdBOXuCUdacQbY0fodifq5IHj2b58EpeG15XafcnS1ePsXD8NlrC4ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uC3R2mUlpw59vHWR7XPwHAO3lfqL96aO2OKj1N2+Axs=;
 b=fuPJO8+axp2T+Xmxu/cqXrFnyvHj67xebiwF5T4BKM6i4yW4qtvedLggTQQLQkXF379882MwYJvNEdSYeUoRyKVDwo3gnJyzgsBIySO7pBtFPEtf4MEaXDMgpfWhUDXeTw9cZI9INMFmr5p/xadtFPAdgdkIFtbuHq4Y14YWAM/Xg+5KPT7Wa8KB+mvSSAo2iSzCrv2vQD/wvI6eKCBDpN6wLd4TPCap4P1O7ylGjydFVIuIcmQ9Tp43PBQ9hiAgayay2Paaf6dCbF20mpSnI2pg+p9DWTP8HWZgylan59dhQmuXj/MGTtRvr6zc3pXRJ5ssEx2oL9JOmSZB2DEYqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uC3R2mUlpw59vHWR7XPwHAO3lfqL96aO2OKj1N2+Axs=;
 b=cWh2Ul3FJT2UgZkqEpIfv4X48A+n8ulBIP/weobUnUOEk/hUL0dEYpGvlCAIWAJ4LGhQuqSKypgJtAeJrcRVzKmgwFWcqzJX6yuwke9DKIYDeVw2+MRqwfSoZf4k/f9AAlQClGoi4oaQDBmuqXZo2hgFbMohtvgkdVX7qLHI3+g=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2SPR01MB0003.jpnprd01.prod.outlook.com (20.177.79.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 20:12:41 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89%4]) with mapi id 15.20.2729.033; Wed, 19 Feb 2020
 20:12:41 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: piliu <piliu@redhat.com>, Thadeu Lima de Souza Cascardo
 <cascardo@canonical.com>
Subject: RE: [PATCH] makedumpfile: cope with not-present mem section
Thread-Topic: [PATCH] makedumpfile: cope with not-present mem section
Thread-Index: AQHVzzjxMLXncz5rgU2tzBmjVtM4QafzOgIAgAAHWICAABBDgIAFJqZQgAZRDICAABE7gIABbiuwgAA8WwCACiPygIAAR2sAgABpuDCAAkdygIAJdQYAgAsi+4CAAL0TwA==
Date: Wed, 19 Feb 2020 20:12:41 +0000
Message-ID: <TY2PR01MB52102E12F7A39389CE97EF7EDD100@TY2PR01MB5210.jpnprd01.prod.outlook.com>
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
 <TY2PR01MB52108AD0131515408592E08CDD030@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <cca47a31-6e05-2812-65a1-832621992553@redhat.com>
 <0b743d83-d874-a093-82d1-e6d3d8bc47e0@redhat.com>
 <5d8adf59-a4fa-0a5f-84ea-6ce64f7d208c@redhat.com>
In-Reply-To: <5d8adf59-a4fa-0a5f-84ea-6ce64f7d208c@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.233.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0815b35c-7901-464a-86c1-08d7b5781315
x-ms-traffictypediagnostic: TY2SPR01MB0003:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2SPR01MB0003CCFD0DC7DFE0FB35953CDD100@TY2SPR01MB0003.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(376002)(346002)(396003)(189003)(199004)(71200400001)(7696005)(66946007)(66556008)(186003)(26005)(81166006)(53546011)(6506007)(8936002)(81156014)(8676002)(52536014)(33656002)(66446008)(85182001)(66476007)(64756008)(2906002)(7416002)(316002)(5660300002)(54906003)(110136005)(55016002)(4326008)(9686003)(86362001)(478600001)(76116006)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2SPR01MB0003;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iBXGZbTFLoLH3E6BSfeWid2S/VM+qaAv4SMNP9notXAItJXrEyoq6GXKBkZAv/K3/YibsSQUDo/QAdy+TzTsTceEgJS718nuWHm040lpzFSo/akc89ltVDDYmuKMLYp3BNFnzBfqYDuTXd1vvM2KB2eYKK+BVzKxBAstnxDB7EHzle2IAwWLPnEGj1whLZoTzG0fsKcI3WHR9/Zdr6iPzXNOLlEU9Y7YYxHdKaMajQqAHtmRWZOeM8ZZyKktwEU9jrMvgrCcx4j0XWiWEO/rjMrtYNZgUupNSY7bI7EonYb5q5mnkEGwIuO0ucPknBZRtc1q+EbqDwRbdGOs9jIUbctMNPb/mVGK0v38F3g9W0GZtTlxbhwdERDqzD2+HPPZjL3qAHxvIZsU3tBTOzZluNbdOp/5/daA5jhsV+gum7RQEf7g77cPEggDAqAEaDUL7bGZyzufFSOT2Az2GAy4jCVGfI9dJhbJb1OC8B5+yWmRHyVLSfnnhILXFv+dNgvBn6fbvzOBi00bWMQWvZKauw==
x-ms-exchange-antispam-messagedata: MrJnk//4nUMn+58Wn8kH8fHxR2BbJVzx65tPAA8ClraREbwUDGBaMzhsuaYYcDaZvvcR2iVLOUBxjgEHZWa6xqzHPloSKrs59T2Qi55LTy0V9NVLRu1dP8bdf+wKPYIdyorj5WRchvMtnOp7FFX++A==
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0815b35c-7901-464a-86c1-08d7b5781315
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 20:12:41.4786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qY1Qhh+InN5CS4j8KGZgnjkW/0vTEs2qH7rCQpM32TjtGhOAA8NU3amJCGw+BNIv0c5Y/tGIYAtzFESpzPUF9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2SPR01MB0003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_121254_432270_D4F8052E 
X-CRM114-Status: GOOD (  26.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.131.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Hi Cascardo,

Do you have any solution or detailed information on the failure on your kernel?
or could you try this branch?  It has an additional patch on top of Pingfan's
one to avoid the false positive failure that I'm suspecting:
https://github.com/k-hagio/makedumpfile/tree/modify-mem_section-validation

Pingfan,
Do you have an output of makedumpfile when the original failure occurs?
If you don't and it's hard to get it, no need to do so.  I just would like to
add it to your patch if available.

Thanks,
Kazu

-----Original Message-----
> On 02/12/2020 12:11 PM, piliu wrote:
> >
> >
> > On 02/06/2020 11:46 AM, piliu wrote:
> >>
> >>
> >> On 02/05/2020 05:18 AM, HAGIO KAZUHITO wrote:
> >>>> -----Original Message-----
> >>>> On Tue, Feb 04, 2020 at 02:24:17PM +0800, piliu wrote:
> >>>>> Hi,
> >>>>>
> >>>>> Sorry to reply late due to a long festival.
> >>>>>
> >>>>> I have tested this patch against v4.15 and latest kernel with small
> >>>>> modification to meet the situation we discussed here. Both work fine.
> >>>>>
> >>>>> The below is the modification of two kernel
> >>>>>
> >>>>> test1. latest kernel with two extra modification to expose the problem
> >>>>> -1.1 reverts commit 1f503443e7df8dc8366608b4d810ce2d6669827c
> >>>>> (mm/sparse.c: reset section's mem_map when fully deactivated), this
> >>>>> commit work around this bug
> >>>>> -1.2. reverts commit a0b1280368d1e91ab72f849ef095b4f07a39bbf1 ("kdump:
> >>>>> write correct address of mem_section into vmcoreinfo"). This will create
> >>>>> a buggy situation as we discussed here.
> >>>>> -1.3. fix building bug due to revert
> >>>>> a0b1280368d1e91ab72f849ef095b4f07a39bbf1
> >>>>>
> >>>>> test2. v4.15, which include both commit 83e3c48729d9 and a0b1280368d1.
> >>>>> -2.1. revert commit a0b1280368d1e91ab72f849ef095b4f07a39bbf1 ("kdump:
> >>>>> write correct address of mem_section into vmcoreinfo")
> >>>>>
> >>>>> So I can not see any problem with my patch.
> >>>>> Maybe I misunderstand the discussion, but I can not see my original
> >>>>> patch will break the kernel which have 83e3c48729d9 but not a0b1280368d1.
> >>>>>
> >>>>> Thanks,
> >>>>> Pingfan
> >>>>>
> >>>>
> >>>> You also need to test the case where 83e3c48729d9 is not present at all. Can
> >>>> you test on a 4.4 kernel, for example? As far as I understand, a vanilla 4.4
> >>>> kernel would not be dumpable with your patch.
> >>>
> >>> As far as I've tested this patch with SPARSEMEM_EXTREME vmcores below, it's OK:
> >>>   - 51 vmcores of vanilla kernels (each from 2.6.36 through 5.5) on hand
> >>>   - one more vanilla 4.4.0 kernel with a different config from the above
> >>>
> >>> So apparently not all vanilla 4.4 kernels are affected by the patch.
> >>>
> >> Sorry, due to touch hardware resource in our lab, I can not have a test
> >> on v4.4 on a system with hotplug memory yet. I still try to find some
> >> resource.
> >>
> >> But from the logic of this patch, it just does the following changes:
> >> -1. After memory hot-removed, either mem_section.section_mem_map = NULL
> >> or mem_section.section_mem_map without SECTION_MARKED_PRESENT, we will
> >> have mem_maps[section_nr] = mem_map = NOT_MEMMAP_ADDR, so later it will
> >> be skipped.
> >> -2. If not populated, mem_section.section_mem_map = NULL. It can follow
> >> the same handling of hot-removed, and be skipped during parsing.
> >>
> >> And in v4.4 sparse_remove_one_section() just assigns ms->section_mem_map
> >> = 0, which can not be violated by the above changes.
> Ping. As all of us can not reproduce this bug by v4.4 kernel, further
> more, there is no code analysis, which persuades us this patch will
> break the makedumpfile on any kernel version.
> 
> Could this better-to-have patch be accepted?
> 
> Thanks,
> Pingfan
> > Last night, I got a machine to test this scene. After applying my patch
> > makedumpfile can still work with v4.4 kernel.
> >
> > Thanks,
> > Pingfan
> >

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
