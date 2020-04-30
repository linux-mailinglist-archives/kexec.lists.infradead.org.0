Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C151C1C0802
	for <lists+kexec@lfdr.de>; Thu, 30 Apr 2020 22:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNqRj6wGTlNI969hTB6xmBVDdNKCQYvntsz45TEvJSk=; b=C1AlaH1e7TIXmp
	wd+cX0/t/UwqRaZ3agYkqPvXk0pCxyGRrlohQ3ixsf/PbUWSDi/9ey0bsDPFkM11gsy0AkjU1EpML
	pP/7kda5u7nk8fzr6nWxiP4+7210hFrIzmwrz5vB/7oudmsRn1cfQKnPO13u/7rHeGgtHDpivxfQ/
	Y7lbL8wNv1fqTGVyaHLauIg5SA1aTdjH8we9q6IjWh0o4UCCLdKTuLMsdCiMI7SYovaQLU7rZWh7Q
	mIVOAsd0RMfVkI8tyyHgFe9u6MFrzPdjSwuYGsa38V872R1WzJUyRi6/xE0DzQzkjX3hUfGg+KwXN
	dzy92CfczZ+O14BTrC+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUFw3-0008TZ-TR; Thu, 30 Apr 2020 20:37:31 +0000
Received: from mail-eopbgr1410040.outbound.protection.outlook.com
 ([40.107.141.40] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFw0-0008SH-H7
 for kexec@lists.infradead.org; Thu, 30 Apr 2020 20:37:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iTMiuHV/fMdeQy2WHciV7XcymcgplJh8tIgBWMIilJXBR8M1/k6gbugIr1QrJSIXXxJ6kQFvV6ttbNN5Kn4etzfa0RJpXBvU+kJB11k6EDpadZ8sQJUWiR8i9+V3k0o9cb8lz54aMBHTpe+PMlDrnnjT8pS1NuuzBtWNO0coWc/XPOmVrgzITze6ud0U2msL0TxNFYi2m3/Q5JVh4lRh8DtSMOlWLL/bjwQa1aPr8d7Xe1Oum7VSp53AvzZrrEPsBvF/UdvrYraxyOB+zzDRFnXRJgbM77mxikKAQoesQrLD+bcdo222zPG2Mug5Vz0vFFcLmduXYWDr9gExm4jdjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hgN7d/Yqn/hT3CFejqu91xs26wAzHKHuvVbvK708pv0=;
 b=ZwlnYSxHqDVBjUvzsfmg/xuez9ABmIVtgX+pTCLFyICKvo/ZXHntOx/OELMa8GQCk5iH/jfSAIhg8nmZ85HdecuDVdZlg/okj1fsKo9ijrbgMSfAofQ0w2a1osz1oogAmQve9/qd7lggx652RsOgnIOpPiX+B0ATBv7Go9lJGQbjWg8Ehyag0J9WFCerFv7ZaOudA1jdYZNczFf+8UhfHykQznxVCYoMCclLEszaRF1eQyxndV3DrHmuvWOZAVaWO1C6G0DduwmYjgQz1EaoMOg8aEv6WYOsav10qWS1UAkweKtjUqyyuD20Mb4h1IYSnmTvWMueu6fHSXWuh6dbaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hgN7d/Yqn/hT3CFejqu91xs26wAzHKHuvVbvK708pv0=;
 b=c5EFu2mZSBf/MH2K5VW4cuRWxdYCRJZjvwbG+LDF42WP4IIR2MlOAjftobFjBGCfe6/yLl0g4yYgY+SkIs/pLmt4l0yOQAtnhY1QFDpLpKTVqsOw5cICIKlTsYgYlN5RJiMO6AlRbyWYojgQWRMUtu5Mpob8CE8Z84Z0gUy1xK8=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (52.134.241.23) by
 OSBPR01MB4439.jpnprd01.prod.outlook.com (20.179.181.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19; Thu, 30 Apr 2020 20:37:25 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.2937.023; Thu, 30 Apr 2020
 20:37:25 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: piliu <piliu@redhat.com>
Subject: RE: [PATCH] makedumpfile: cope with not-present mem section
Thread-Topic: [PATCH] makedumpfile: cope with not-present mem section
Thread-Index: AQHVzzjxMLXncz5rgU2tzBmjVtM4QafzOgIAgAAHWICAABBDgIAFJqZQgAZRDICAABE7gIABbiuwgAA8WwCAj+6cgIAAPJDQgAFGlQCAAI/sUA==
Date: Thu, 30 Apr 2020 20:37:25 +0000
Message-ID: <OSBPR01MB1991F08479EF2475E323D7FFDDAA0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa> <20200127180627.GB4080@calabresa>
 <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200128193302.GC4080@calabresa>
 <769ddb8a-c845-04a6-0064-d674bbd04ae3@redhat.com>
 <OSBPR01MB1991FEF11882F89353E6B342DDAD0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
 <e487a969-7660-bea8-405f-59f1aab426f5@redhat.com>
In-Reply-To: <e487a969-7660-bea8-405f-59f1aab426f5@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=nec.com;
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e2a188a-648b-49ad-3dee-08d7ed464aed
x-ms-traffictypediagnostic: OSBPR01MB4439:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB443941514E3414344678F69DDDAA0@OSBPR01MB4439.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0389EDA07F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: inUjuAZjzEcxjxrDHfHW7dDDtYf2evLxLk3ZN+VPAY+D0o7DuljDTcxdsAIn4NtxeuiAeKgSLq4tgmJ1tBGCRXDFKhB5saItmdrUNOZ5czPFPRnx63xcZIJW3kZMRAYWx5cbod8Kjj9gbUvRmpaYbEMB7ZpAJXJR9rrD04GJOAkR+4ziBEQewg0zNoXKU31IOTK168TOElchnN23POY/SEDcHvGNf5/plJ0uSKyXT+RW6dKq2A9Wx224lzhvAIED4LyDTatmxQdKGlkVEwTrRBZ82DFlr9YcrAnenLyhXw0HZ74+3KFbfqJ4xDtrQvi3OwvGhb8qjCQIVDA2hnKVbsWmk5qmx4ABFb841wB5Aum86qAc6kkenWaZg89X1nXKR/qCqTyIUz1G0Mb9HMDO7bZyR36zd0iEGe870eHOVIO2lud8oBmbvznlGgV2QE3f2K+kbI17rQY191vbMycrFwMwiVUWsG3T64McbQcybJAyCQjlw6Jht561QtM0+X3LMZuojbNPI2ii8DSTYpEyeA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(366004)(136003)(376002)(39860400002)(53546011)(6506007)(66476007)(66446008)(64756008)(66556008)(186003)(33656002)(52536014)(4326008)(316002)(71200400001)(54906003)(7696005)(26005)(86362001)(966005)(8936002)(6916009)(9686003)(66946007)(8676002)(478600001)(2906002)(55016002)(76116006)(5660300002)(85182001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: clmeZgfUT1LN6JB5QjMUS+hgKqyhG8fBKs30OM/PdPVUuohk8fFjZco3Bu4aV1HJimiv4o9zMSsaKdupzUIoslfgDOPsl77lwFjJRHaOJeIgtPILo2OnpPaM+4n97F6acCAUgQXA1+CWpQNC8/wP+5ehcDIZ05kWo/LD5DF+VtnsPbnouFY1vDDcHUsKw42/zNts58TcV2W4xnTvLxwD2JKFxXqcxfkEIP1hZlsPk2Nv49E/Acxi10n3Kle7RLw1c6GKKpWvEnrMGaaCaM7rQ0E9KOszC+6NeIepf+0ONUF+z+wHWkKHZOK0H4/jvRQML4xoBI4fWfTrlYrH5oNHqmqJUk/8QBWA1FsEZNW6VpnTDNXpwbsEOe8ZfMnlEIA3b/lHgxyuAjSUhAfMVP3w8bmEfoPPl6LvWF3sNozuKXC6T3v7C89EroNuQBswFMRqgBK6jhsNaiFMgnCox9wuSkhQdkuKMI5Ppspy2nATLUT56tCw74R17GrhvFJ7ygPNkb4LfRAOGFfL94MLxMG7GKlvB6ig5WeLP94iyyPK/dVMSiupa41kRrCYwqJ0WZZmN70mtdOF2oFdoGd+XQ3iaRmnTaK3ezjUMCmQjcLDSa8dUe8lcF1CmxV5gUJuAqbMytxS/HcxI7E8+wvXqAetm4Bm1ZaU4nbsYFKmh3J1rhAPp68l79f64qJzOnYrwnmb7Z88XNzkvIiUoNITSKFHrMhe6TeuYy2dxIaJZTSNflOKgeppEAlRJ2tyt4EH/GhzSkGXiNI33ybf+x1jqzz6epvP6xtDG+/crzcUY7TX7ik=
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e2a188a-648b-49ad-3dee-08d7ed464aed
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 20:37:25.6100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbQLqgMBt98ZwyulaHMa1s8ZfDhLMNhh/D47aN1AqP9OgrHO/2PI9pc+tACymiLWRBvq39GevlcMixn263yBEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4439
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_133728_642566_F59A050E 
X-CRM114-Status: GOOD (  24.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.141.40 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.141.40 listed in wl.mailspike.net]
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
Cc: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> On 04/29/2020 10:27 PM, HAGIO KAZUHITO wrote:
> > Hi Pingfan,
> >
> >> -----Original Message-----
> >> Hi Kazu and Cascardo,
> >>
> >> I encounter a weird problem when running makedumpfile on a s390 machine.
> >>
> >> Our production kernel uses extreme sparse memory model, and has the
> >> following:
> >>
> >> in mm/sparse.c
> >>
> >> #ifdef CONFIG_SPARSEMEM_EXTREME
> >> struct mem_section **mem_section;
> >> #else
> >> struct mem_section mem_section[NR_SECTION_ROOTS][SECTIONS_PER_ROOT]
> >>         ____cacheline_internodealigned_in_smp;
> >> #endif
> >>
> >> So in makedumpfile.c, get_mem_section(), it got a failed result when the
> >> first call site to validate_mem_section(), then it should success at the
> >> second call site to validate_mem_section(), which is inside if
> >> (is_sparsemem_extreme()) condition.
> >
> > I think your production kernel should have kernel commit a0b1280368d1
> > ("kdump: write correct address of mem_section into vmcoreinfo"), so the
> > first call should return TRUE and the second one should return FALSE.
> Yes, it is.
> >
> >>
> >> But the actual result is not like expected.
> >>
> >> After introducing
> >> commit e113f1c974c820f9633dc0073eda525d7575f365    [PATCH] cope with
> >> not-present mem section
> >>
> >> I got two successful calls to validate_mem_section(), and finally failed
> >> at the condition
> >> 		ret = symbol_valid ^ pointer_valid;
> >> 		if (!ret) {
> >> 			ERRMSG("Could not validate mem_section.\n");
> >> 		}
> >>
> >>
> >> Do you have any idea?
> >
> > Presumably this will be what I expected that it might be possible.
> > I can apply the patch below this time, what about this?
> > https://github.com/k-hagio/makedumpfile-old/commit/ce883df3864a5744ac0f1eff47de06b5074edb5f.patch
> looks good.

Thanks.

> >
> > or, we can also investigate why the second call returns TRUE, and
> > fix the conditions in the validate_mem_section()..
> This is due to the relaxed condition check after applying my commit
> commit e113f1c974("[PATCH] cope with not-present mem section")
> 
> diff --git a/makedumpfile.c b/makedumpfile.c
> index ae7336a..607e07f 100644
> --- a/makedumpfile.c
> +++ b/makedumpfile.c
> @@ -3406,8 +3406,6 @@ section_mem_map_addr(unsigned long addr, unsigned
> long *map_mask)
>         map = ULONG(mem_section + OFFSET(mem_section.section_mem_map));
>         mask = SECTION_MAP_MASK;
>         *map_mask = map & ~mask;
> -       if (map == 0x0)
> -               *map_mask |= SECTION_MARKED_PRESENT;
>         map &= mask;
>         free(mem_section);
> 
> @@ -3453,10 +3451,8 @@ validate_mem_section(unsigned long *mem_sec,
>                         mem_map = NOT_MEMMAP_ADDR;
>                 } else {
>                         mem_map = section_mem_map_addr(section, &map_mask);
> +                       /* for either no mem_map or hot-removed */
>                         if (!(map_mask & SECTION_MARKED_PRESENT)) {
> -                               return FALSE; ------> a strict check
> -                       }
> -                       if (mem_map == 0) {
>                                 mem_map = NOT_MEMMAP_ADDR;
>                         } else {
>                                 mem_map = sparse_decode_mem_map(mem_map,
> 
> 
> Before my patch, it return FALSE for any non NULL value without
> SECTION_MARKED_PRESENT. But my patch relaxes the restriction and
> consider it as hot-removed mem_section and keeps the parsing on.

Yes, so I meant that we might add some conditions so that the second call
could return FALSE for your vmcore as expected.  But I decided to apply
the patch I wrote before.. and applied:
https://github.com/makedumpfile/makedumpfile/commit/81b79c514ff6fc881f1df4cb04ecb2d7cb22badc

I deferred merging this at that time because it might not be needed
actually and I didn't want to change the behavior if possible.
But it happened.

Thank you for the report.

Kazu

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
