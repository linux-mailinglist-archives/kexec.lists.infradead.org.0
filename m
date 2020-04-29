Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C951BE0DF
	for <lists+kexec@lfdr.de>; Wed, 29 Apr 2020 16:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lglZAGe/pxqspwsF5kBF1Ox7yYD00h2osB6eY3c2SJY=; b=cUutnBbw5cqLoH
	TSWpSmrRXwPkvYbCbvC4Dwsx8ws3l1SQVFcki8HPCGT7o/UoS7PszlhHju4uSoNOKO3CSnxnITsEv
	oSvUsLyxIrWfwNVWJPdp0bvPaQPlassta6OiU2KXmvXBfuOU/t5FXTMWRhWv9fX57MJAWXayQh2kW
	7wEylROoFmEqmEowd+AYxPt01KiP/qLaAZCNSSNBRfks3tOey2Kv7Obni1c2caEf5iFAS9UqF9ar+
	Xy9fB+Hbbhdm0R0lelIvLR1i5AWIflWqkVyS0gnhKXd8o74B3ZRzdRuk6pp9UzAILPoSuUmCzkLTz
	OxhuMytjAa66aKbSdeUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTngS-0001jA-N3; Wed, 29 Apr 2020 14:27:32 +0000
Received: from mail-eopbgr1410051.outbound.protection.outlook.com
 ([40.107.141.51] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTngP-0001gw-Kj
 for kexec@lists.infradead.org; Wed, 29 Apr 2020 14:27:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aytTGF+tpgAZcjYAe6bL04/2PQ0EaH02CQkiRNLgrDmPYvbQakaQvy23dKQBButMk0x9bQuxKEu6hJSNbG/M3lDA5Cq0uxOdHXtb6UE8UQ+sNGK6LO9KxfITpci/4VFQ0b5Gs2X3C3n0P3X0rfwhlj1PyK6CN+nj3wv8RdwLdXXnCIIbZpvSy3ylXy8u1tObMKvnWLdfdAWkoGANSdM3AmyB+FxwTbm9qcv1l+FRrLSmluG/qgkdbQBjI1VBrSPLHg7u1h0+GfxDLsUqwOkxEXfP+nQMCleu1zdMlHfEzuhtup9JzoUv16zBBwQgVWmd1A6MLmJrzo9YX+Db04oFHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VcC9Yx0EcNwVe/tbI0mIXJlux28zIg6S7LGNYmIUtlU=;
 b=Koo2TQIWUvMmf2PkEKOO5ICx7QHl5vLDzBoA4fK9nGM5MRRYR1PriQgI9UNHT/NkmnTVMfox3cAiu0kQNW2iXSL3TfLy+0N7hspFBeiZ+WiNzlTQcLt34R/0ynIQZ8T7iBTaHXhdR5pot+XC07z0RlyKmVPd4kezpwl6V04c+0KnkCSbYY/BynUfct0ZUQJJswYTsOaeFMEGnWvIjuJAD9VSVt3Ihv0HWKGJjSSMT2LFETsn1uXHSw3bxTQGXYJjNZMai3x1GKpx9JpZd7v6hF+kCuBSGFlnfpQ+rTxv0DvNj77jD17yEtEVfYPOnNzr9XaQvYJ6/H83sljQqcUtYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VcC9Yx0EcNwVe/tbI0mIXJlux28zIg6S7LGNYmIUtlU=;
 b=iqfkiJ94rqNWth3g9v/wpbLNL9sVFYb7fJu5E8bDF43uH2wev1nCxw/mMVd9qnnD+uOmSq3VPR1eui1vUCytmUpc5O82CTsfyBOZxVsWEbGTIt4jdqx3biYRmN+R8I5Ngj8XqwBnq9+e8TuwC5sEKEpkYqGhxBXxcaDzjjiMUkM=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (52.134.241.23) by
 OSBPR01MB4583.jpnprd01.prod.outlook.com (20.179.181.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Wed, 29 Apr 2020 14:27:20 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.2937.023; Wed, 29 Apr 2020
 14:27:20 +0000
From: =?utf-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
To: piliu <piliu@redhat.com>
Subject: RE: [PATCH] makedumpfile: cope with not-present mem section
Thread-Topic: [PATCH] makedumpfile: cope with not-present mem section
Thread-Index: AQHVzzjxMLXncz5rgU2tzBmjVtM4QafzOgIAgAAHWICAABBDgIAFJqZQgAZRDICAABE7gIABbiuwgAA8WwCAj+6cgIAAPJDQ
Date: Wed, 29 Apr 2020 14:27:20 +0000
Message-ID: <OSBPR01MB1991FEF11882F89353E6B342DDAD0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa> <20200127180627.GB4080@calabresa>
 <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200128193302.GC4080@calabresa>
 <769ddb8a-c845-04a6-0064-d674bbd04ae3@redhat.com>
In-Reply-To: <769ddb8a-c845-04a6-0064-d674bbd04ae3@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=nec.com;
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa1d0b95-dbbe-4f83-1f6b-08d7ec496d19
x-ms-traffictypediagnostic: OSBPR01MB4583:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB4583AC64C70F2E83663128C0DDAD0@OSBPR01MB4583.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 03883BD916
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(396003)(346002)(136003)(39860400002)(86362001)(52536014)(9686003)(55016002)(71200400001)(4326008)(186003)(6916009)(66476007)(7696005)(8936002)(6506007)(64756008)(8676002)(66946007)(76116006)(66556008)(478600001)(54906003)(26005)(316002)(966005)(5660300002)(33656002)(2906002)(85182001)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NqPI/O7gN+9xcWbhZEzbMuxyttFQW6JFv4+wPbPIr8UBoTmqE4sKEP4EF9yxYc76C6rroTWdbmmI1lUqYx7AUtimYstfFtA7AIR9EiLhUfY3d806JUIPiO2FHV/jKjBWls+9Y3I5kaT5GuSyt9x/Y6UiXHi3vgubqI4PL4MZPypTryz9QFWuk6ZvGp8apkzN6C77VWAgzt+EZCwbg2SnpZFUq+dvEFpU33F+j7iHI1kYP4sZuRlSDXfu2+/TxHC5aDuJns5CLF18fSiO31XaI9XpWJ1b+On7ApE+XRoLQbyRzwY12QSunxXbZEFVviBWjb+rUaSX+qxMkPZnH8kv6Ww76z56EjXzoL4nhVTjsS64zPzLhkT4iFji7Jnw9MmPU5Dp/CqevbYNR7RME3UfHmbnb6K6iol1e2MYuVQsVuipiPsRTW7ALJLXCwOgDloe625e6FzwmOObHkA8j/TYiP5GGnI0CUqQto2H1BoAFAq28hfCatnyFP6nhjitHrXMv8rGn9wWa9PY4MyOvGm97A==
x-ms-exchange-antispam-messagedata: SVNRwtr2+0ilDJ44a1zHIh55WlzDDpYvE83nFFUq+Q05kHEPjaK5+Q7c63gvSMzyFy2QmmJuL3Crhiu4Z6nB7MTUV2vm8Y61eb3IOxlV1w+ZmKqzAhtexlT40T5vrSxBxvcU3/3LW8c/oya72pb3G0Pze/ma3ybvKke81yFiXn0/4af1YUGPfJ4jCCHwU+4BzCKmRRtg1bl6oa/kvToI4jQs9mKBNuxr2nYkJ3dEuTx3xAqL2BthHLvrUUTJhQW1wUfzGSIUHgTR3bwkpX6lWkqMtYc1X4dr1QMJNk/YUIGmApBpIF3aUETjsqfHXS5UUN1FVDC1U/yR/hKJ/OXZA+qNn2QtTyb/GfHNodQ0K2ExEB5tpcuSF8YuE2l7iZZfDGqN/cDfDi/hBHU0VCIWT90uP9lbL0LlYot1+di5vV/7EEsImh39kwvvkZDCqkLCoUA2hDfbJol1wmL9NLvMKLxijQjg/+Vms4CErT5xlS5LxLt/NaN3iUfKt26dZw+ouoHU4K/lZ25VnZnLak5m9fWLO+hY6zyhlZwKZ3ilN/c6yxRmKoiFsBfmiKJAY7B4L+zq6+uMts8UaT0bOh/AtSWKxCJclRoutZyCcsBVzPOVG4ondcGw8HZgmPdlM17Ey6BuT/7KZFeRWY0ckN80Rmdhrsj9qRlAWuADmnlfDMCgiB022yyrxT9PzzcrmpCRDHoMaddgKw/9vVS8lyDPGwJyUImpRPgvmaodzRTc9AAOpojpCl9SbJl4tX+r2roDuOE4svjVloV+F4Y3wEdByg7yoRFnfHDNnhOKSOEq7cg=
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa1d0b95-dbbe-4f83-1f6b-08d7ec496d19
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2020 14:27:20.2285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JHZiUZ2LmmKprkIvuSRD+DsJ9MgoyaON+Ycurs0hK9k0CuPsXJ4Byz1MlebiUZ3SSFbDVzR73aMoTCSO33sxQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4583
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_072729_733144_14969632 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.141.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.141.51 listed in wl.mailspike.net]
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
Cc: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pingfan,

> -----Original Message-----
> Hi Kazu and Cascardo,
> 
> I encounter a weird problem when running makedumpfile on a s390 machine.
> 
> Our production kernel uses extreme sparse memory model, and has the
> following:
> 
> in mm/sparse.c
> 
> #ifdef CONFIG_SPARSEMEM_EXTREME
> struct mem_section **mem_section;
> #else
> struct mem_section mem_section[NR_SECTION_ROOTS][SECTIONS_PER_ROOT]
>         ____cacheline_internodealigned_in_smp;
> #endif
> 
> So in makedumpfile.c, get_mem_section(), it got a failed result when the
> first call site to validate_mem_section(), then it should success at the
> second call site to validate_mem_section(), which is inside if
> (is_sparsemem_extreme()) condition.

I think your production kernel should have kernel commit a0b1280368d1
("kdump: write correct address of mem_section into vmcoreinfo"), so the
first call should return TRUE and the second one should return FALSE.

> 
> But the actual result is not like expected.
> 
> After introducing
> commit e113f1c974c820f9633dc0073eda525d7575f365    [PATCH] cope with
> not-present mem section
> 
> I got two successful calls to validate_mem_section(), and finally failed
> at the condition
> 		ret = symbol_valid ^ pointer_valid;
> 		if (!ret) {
> 			ERRMSG("Could not validate mem_section.\n");
> 		}
> 
> 
> Do you have any idea?

Presumably this will be what I expected that it might be possible.
I can apply the patch below this time, what about this?
https://github.com/k-hagio/makedumpfile-old/commit/ce883df3864a5744ac0f1eff47de06b5074edb5f.patch

or, we can also investigate why the second call returns TRUE, and
fix the conditions in the validate_mem_section()..

Thanks,
Kazu
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
