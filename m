Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E250166122
	for <lists+kexec@lfdr.de>; Thu, 20 Feb 2020 16:40:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sf0JAsxeo1QHjERc9HYNyGqcSXGXUiLW2kIdImf/FFU=; b=Swc6i78RzotV2Y
	RD6zrzAQQrTrwzHEqpLrW2NjuHPDtMU1TYLm962jxgm4bYR6GODHX31v6aNvPYkKkFNumlev0wVGK
	9MGodKnyyoq3xnaCqC7cNKS5mki3pphLVQaQtGNhnO53EVm2+rzXi8YvURvDlS34SSo9x2ehAiHqE
	EI/s5gPAWFgDNGMp/ObSKRzgp6Qe6BtW9hV+wTDqDS9IYM+/IJxXSzuRJHDmRmiTXA0BLpNfayR0A
	0ZA1Zy9T/OmEd5O/4dCiC8cWD9Jv3riJVTB2ocswX5cAB8MuNH5BicMEjRtyMfi10/ykPI4fj7g5D
	HjlyOAHm2P7e+NKErk8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nw7-00033b-34; Thu, 20 Feb 2020 15:40:23 +0000
Received: from mail-eopbgr1300081.outbound.protection.outlook.com
 ([40.107.130.81] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nw2-0002jo-SN
 for kexec@lists.infradead.org; Thu, 20 Feb 2020 15:40:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IKmNcJp/jEP4VedAOfR1Pa1V/foHNpBMHaWR3le9JTjnpN9/Rvv/9W0VpPYPzShLBxxCxp88m1GRa9eNJfcgFJHazTCMaabLonUZxTpjsXCz0gg2AL8sZRT/D1R27G6YeIQrG5lJrXCBqV6TkpHq7v6Zdar50h/ccfFU1JGU6kpSg+NcYWavYf9KiLYWskcjCnZq67zdiPo1/b4KejoASewZUarmMIrzhAEWybW4R2nvkldCSaPmoTQJLN6MUrPLhqfbuXCso9Fl/SVKo/O8tjBu0UD1UrDUbbdhh9GaSXEEmV5f7CoA+BbmadSvlW2lmEbHwTLq8NhgjgaoQGzytA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rf+zzj02khK+BjJCU1lzLNccoDbNg6QfIQGSMcujBp8=;
 b=Cpbdwp4iTgZduCBcBYuGWBGUTJKJB6SxJ1h7cmHGKPZ2mttB4i48ALbNVQbGR0FTIAo9tc8h0qoBS7iD8nsuxSICM4DfDKVTNroQAh0+egZ2obiAZD9FhSSbKNYIqp8IxFp4NrNqRNUY4+sOPPaDDvL9f1nQkcViyUPb2Pp0NEibxTwmzwXdha4USl/SHmSAqqQxGW5N5Ci68w3+ofYrj/Z+o31frb3MuOOgdYscl1ZBLhevX/Vhu8UgdXoFA+rQho3oSd3ZgTis0ptQW8itRIYi+YVynmSx8l+uKYfMWXmfSKbh/45D1Qp+cVWdGRXRunzA9azBQ5/aUSdLTUE9ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rf+zzj02khK+BjJCU1lzLNccoDbNg6QfIQGSMcujBp8=;
 b=ATL4OmTEZaBfnR6Z+FKQsdnf/3aobpfr+qR9y4TJM5ahLBYhHO9Hp2j7JUEr64rTAMnDYYtOqlxFWGKma6HLaAK6tNCOO1nR0FhoFeskQDneZl6WbjXLNu8J+jMYsC5yu7rXOp7gu7dm7NJOvE7aTYuiLPibhcMc3mWzqhxk2N0=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB4940.jpnprd01.prod.outlook.com (20.179.171.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Thu, 20 Feb 2020 15:40:12 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89%4]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 15:40:12 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: piliu <piliu@redhat.com>, Thadeu Lima de Souza Cascardo
 <cascardo@canonical.com>
Subject: RE: [PATCH] makedumpfile: cope with not-present mem section
Thread-Topic: [PATCH] makedumpfile: cope with not-present mem section
Thread-Index: AQHVzzjxMLXncz5rgU2tzBmjVtM4QafzOgIAgAAHWICAABBDgIAFJqZQgAZRDICAABE7gIABbiuwgAA8WwCACiPygIAAR2sAgABpuDCAAkdygIAJdQYAgAsi+4CAAL0TwIAAlg+AgADS8fA=
Date: Thu, 20 Feb 2020 15:40:12 +0000
Message-ID: <TY2PR01MB5210849D881E84A16D8B5546DD130@TY2PR01MB5210.jpnprd01.prod.outlook.com>
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
 <TY2PR01MB52102E12F7A39389CE97EF7EDD100@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <2902b7be-5361-ea21-fcc6-099f4cc7551d@redhat.com>
In-Reply-To: <2902b7be-5361-ea21-fcc6-099f4cc7551d@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.233.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81dcef9d-0b80-4617-4711-08d7b61b2cbc
x-ms-traffictypediagnostic: TY2PR01MB4940:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2PR01MB4940A449C89723751A772C74DD130@TY2PR01MB4940.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(366004)(376002)(39860400002)(189003)(199004)(4326008)(966005)(478600001)(110136005)(8676002)(5660300002)(53546011)(6506007)(86362001)(76116006)(54906003)(81156014)(8936002)(81166006)(64756008)(7696005)(2906002)(66446008)(33656002)(66556008)(316002)(7416002)(66476007)(85182001)(66946007)(52536014)(71200400001)(186003)(26005)(55016002)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB4940;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7QAx8UoryfV/Chk9QpQtMYLvM7D4uJrlkzNAFpPzd334bBFs3TNnMkxsFrtIdE40b8uxoArLyj1kPSQwCrTyJeUS1Hif3vOsuLIfPVjKrrcWTazcCcdpZTp8g4AWGoWtJ+jhJcyw8ekQBY8SZ6MudEniAu/xJAxsytyTLvVPXDZ+tHp8BBpMvFAdLHzt0XLcgG+VuFZdyqvVXPZc64D7pLuEoMtLyCzpHL1jTs0ptXRZ6ohp/3sU2vMkSpusykHwYLaINdiO4O5RDFMDZPZfyvkgBqNZtH4r6PQednOdMJGNerZxKjZrwCvvDrZ5tF3XP3VNMQ62581IU3g6MNwVB7hE7OnEhDu3NAGNUmg4S3oHs9MeIbs8bcoDg0qOyp2gz7CvZ9BxDe7vWOPaQLRtNItyL+y5+2xQ1v0dH22h+vrUcftEPiB469uMvwenzr13a9hT3FaEEpakggC9c6DO0Cc/3FnwftXH13VdSBFf9n8sT+4yPIqZQw5l3dUmR8RA
x-ms-exchange-antispam-messagedata: ShMCMDHFNOLZhjSZ56aT0f505AdNWGv8LnIlauNffClzR2oWBw/pvI2R/PxPSgmPEwgpATj+ZR3L50okwNROJDOxwueXCMaCNeveKXE9ma1UlMcrKLQjk03TGT1ZUQWsWzgc2inJ+XbSBEIHrjTHwg==
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81dcef9d-0b80-4617-4711-08d7b61b2cbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 15:40:12.6663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fwd1M9o3z++TVbJzBjZZd/3gmUG/HL+/btSEjLDyLyhKFTOpIhcPHhKcvvvwnFjMVKjI4XxK9q/mgYGGNdU1Yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB4940
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_074018_989125_DFE0D034 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.130.81 listed in list.dnswl.org]
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

-----Original Message-----
> On 02/20/2020 04:12 AM, HAGIO KAZUHITO wrote:
> > Hi Cascardo,
> >
> > Do you have any solution or detailed information on the failure on your kernel?
> > or could you try this branch?  It has an additional patch on top of Pingfan's
> > one to avoid the false positive failure that I'm suspecting:
> > https://github.com/k-hagio/makedumpfile/tree/modify-mem_section-validation
> >
> > Pingfan,
> > Do you have an output of makedumpfile when the original failure occurs?
> > If you don't and it's hard to get it, no need to do so.  I just would like to
> > add it to your patch if available.
> I did the test on a PowerVM. After hot removing the memory, save a raw
> vmcore by "cp", then run makedumpfile against the "cp" vmcore, and it
> will get the following error message:
> # makedumpfile -x vmlinux -l -d 31 vmcore vmcore.dump
> get_mem_section: Could not validate mem_section.
> get_mm_sparsemem: Can't get the address of mem_section.
> 
> makedumpfile Failed.

Thank you, will add it to your patch.

and a bit of explanation for the branch above..

> >>>> But from the logic of this patch, it just does the following changes:
> >>>> -1. After memory hot-removed, either mem_section.section_mem_map = NULL
> >>>> or mem_section.section_mem_map without SECTION_MARKED_PRESENT, we will
> >>>> have mem_maps[section_nr] = mem_map = NOT_MEMMAP_ADDR, so later it will
> >>>> be skipped.
> >>>> -2. If not populated, mem_section.section_mem_map = NULL. It can follow
> >>>> the same handling of hot-removed, and be skipped during parsing.
> >>>>
> >>>> And in v4.4 sparse_remove_one_section() just assigns ms->section_mem_map
> >>>> = 0, which can not be violated by the above changes.
> >> Ping. As all of us can not reproduce this bug by v4.4 kernel, further
> >> more, there is no code analysis, which persuades us this patch will
> >> break the makedumpfile on any kernel version.

I'm not clear what causes it on the 4.4 kernel because of lack of information.
But at least your patch relaxes the condition to recognize data of an address
as a valid mem_section.  So I'm concerned that both of the first and second
validate_mem_section() may return true by accident or something.  If it is not
caused by a patch in the 4.4 kernel, for example, just data location causes it,
it may occur on upstream kernels.  Although we cannot reproduce it so far.

Whatever causes it, in the first place, upstream kernels with vmcoreinfo don't
need the second validate_mem_section().  It's almost for some downstream
kernels and has a risk that causes problem like this.  So I'm thinking that
it might be safer to change it to the if(!ret) way on the branch above
with your patch.

Thanks,
Kazu

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
