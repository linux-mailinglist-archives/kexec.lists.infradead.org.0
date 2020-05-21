Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BACB1DD97F
	for <lists+kexec@lfdr.de>; Thu, 21 May 2020 23:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hY1YKo8afVzkV/biDmq52DN1wALtO04PAsLkxcDc7nA=; b=gIBzxHPNmKsKIz
	eSfWA44cfDHhIdg3FzX8XNtEmkzL6rO/44cLjawshxBrjXY26SFNYmWD6/Mcbg4oO4q4RfvbFUkXa
	8nBXUtJ8DB3/dOH4kkwsDygcWu0E3coCJIlHbjugUtWcBAhhWq8xAk9JiSmhH9gP3KIt3WUW4Jc3T
	PHKNM6VWDSe20S10dxNi5gw8sE7DAOP+ObB7+IOMeT3W0tUeD0CFBx1443dxF8PTO/ZR3iQVkSeZN
	fwg6hwWHpm1UrimQ1hKjmcfoIJVYuqYzT5mzOoGXHRDMF3CyMuTEuBvcDETXkQiUi7YkKE9GxCATb
	iVYne0GWi3yP/+NvGJ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbsoF-0002Yp-W5; Thu, 21 May 2020 21:32:59 +0000
Received: from mail-eopbgr1410055.outbound.protection.outlook.com
 ([40.107.141.55] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbsoC-0002Xl-Nl
 for kexec@lists.infradead.org; Thu, 21 May 2020 21:32:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mmLoLZfb/A8QDX6eIg0VjtVAPhuS9LED2XYLwYbgNjoBCIstRA+wSpNOA3NiOwZaZQGWoq0Gy9dWyWoR2b/s2So6b4jGcWwd2AhnVKp9zlXSplFQ1Dk9I2apcn+DMnNvZUhCqiIIR6pjmM7cPKVp2ZAN8sUBL1349CdTitgWPEtGV4+SSdujc1P7LHBZjghIPXhMqtLLi/BQ0k7i4kOZRsYPJ2uvwHR/d2OZkuMsf1yjgInfkksQ6/u6tKf6h+77QoKlpDMUgvmvKVyzWR/fBG3XSHjviHYMXvG60/ixfAPBoHT/VQSIfDXejucVizvq5XzA4kXBe79nPtvRj4YY9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5e8id73NX66NoEhuMNwBxP1UbCono4fdpzguzsoc0Es=;
 b=NGD6z3Dx0Op1hToOl4SyUVS02tw9rshawD1i+3cvpHKfcAxDXGIbTo5r/0M+4kkNJpkt1ENdQxg7xqXmR3cRMMvvu7qZVgxtPCaP3jQcoAaN/aEioYEn/3bCbfrRbE7L1hpDlQLKIBigDiVw6jiejmhbhfgxNAMfRbqAuM8fAYr79EnjAgUtUccElSCNiB8y4hxMwCp0EaS4v6ORwrhUN2Bmwc/Re+dI//4kVMBu2OH8r7F+fnqj/npKXgySjxhhXMZ1fq5ExSghqMZtRjtWchXVSVpg5uc9EIHEkl662NEcKLFeHKbNSvISA3RO8wnhsDvtn17BmDBY7MjLP7HNBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5e8id73NX66NoEhuMNwBxP1UbCono4fdpzguzsoc0Es=;
 b=EA18aVP0XBj5W6NYXF85qt32flnffLva4fayf0hf3qxXn5oSN6y2Nl+/YbdTH+XVqde6C51ZBMpPyeKCOd115wdwPghxNJZdOlnzHoLU3T8j/ktuz0tuIXsyrr5ezRhpz6Ypuenab/eLiJb5vTlK2FYsJRW1z9i8d4CEimUjvRk=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (2603:1096:603:22::23)
 by OSBPR01MB2469.jpnprd01.prod.outlook.com (2603:1096:604:1b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.26; Thu, 21 May
 2020 21:32:47 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.3021.027; Thu, 21 May 2020
 21:32:47 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: "saito.kazuya@fujitsu.com" <saito.kazuya@fujitsu.com>,
 "'kexec@lists.infradead.org'" <kexec@lists.infradead.org>
Subject: RE: [PATCH] sadump: Fix failure of reading __per_cpu_load memory
Thread-Topic: [PATCH] sadump: Fix failure of reading __per_cpu_load memory
Thread-Index: AdYvPkyht67VsqqWQBO8rYgOfFEcaQAWS7vQ
Date: Thu, 21 May 2020 21:32:47 +0000
Message-ID: <OSBPR01MB1991A30B6FEB435BB7D5F3ACDDB70@OSBPR01MB1991.jpnprd01.prod.outlook.com>
References: <TYAPR01MB41279E6F5CDD8350F13BA38F84B70@TYAPR01MB4127.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB41279E6F5CDD8350F13BA38F84B70@TYAPR01MB4127.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: fujitsu.com; dkim=none (message not signed)
 header.d=none;fujitsu.com; dmarc=none action=none header.from=nec.com;
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a510ad5d-902f-4670-a8ec-08d7fdce817b
x-ms-traffictypediagnostic: OSBPR01MB2469:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB24697CEDC1509D9978491DD2DDB70@OSBPR01MB2469.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:308;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qy1++978B1mbklwUHShmz7v4KlKQM66vdXNQBFFPDq7ijofaQiunQhM9pOVEJCVFAAMFBrL3W8EFS3800L/p5d0byAYbCaT3bPWFtotYpJnAa3fqUIIabw/XD5/u1NKb0L51mv0S8A17Fl/G0nsdVG1n0nIJwkrFPd6csBKbtgQ9wHXh6yEbDaCxl8MRnRAYocYazX9JkKKCifvbtg6gEYfRM23pDV3fdPqAA8PDnXIgBBuMLWSN7w7/78g4jix52MBNmP42lYCbcVmJTQsx9miIzNNtztxGbmUJUXX2I7y3ffqPsKGDRxwjqA+La5trWm9/pBK/NNIbSZfNhwCRH6bgsUuOGgaOFIQHRMT4ihLoMUv7IMTpntJ68nfgmIIojbunJY0KDMV6QqwQcKo7mU/mZPKsvm4pBx46Y9165zpyXCEZGSuQ9BFxQX4ojqSl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(136003)(396003)(346002)(376002)(66446008)(71200400001)(186003)(316002)(478600001)(966005)(110136005)(26005)(7696005)(5660300002)(86362001)(85182001)(52536014)(8676002)(8936002)(9686003)(6506007)(2906002)(33656002)(64756008)(66556008)(76116006)(66476007)(55016002)(66946007)(491001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Q7qxZLdxRlY6ag09IkbA1jJte2hnetrnrlQxlH8TL/v9M6HSyqhe+oGhshsFlBMiiBRNbt03FuFYTSen3CDxDO1fsoiyT9J6wy/9IyvCF+E0qc9kdC/dWxvFzWBSdHchnrt//vQQIQt0PRicBopVuUp2nzwV5GbA1x5A8R1NgSN82S6swPIUp7gQqRLxJARJlL8uIpt17RLCxXPx4pvOD8ILYOPjxme1aDjk4Uf72aMRV3Uf6ZBdgZWV9ERpoxekJr7wY88WrPeQrKu8280jb+Q44EpoXiZif2zbacIdeaBT/YI/3lGPoPM30wdB4BWmATCvkkIGe8FCoW+8TGLKKeTMtpNjZTGvDX8/UOzRIaXe0mX52aFDfMHrvjUC2Z1VvcvCQuEdQAHqeI8ciB0ajrWsil73JDk6XP9VSpQ/LHKlDsY60qfhreR8eeI6MXDw8y25UlYaJL7ohY9J6q+Bh5p45ArNxdNhHu/Me5pHPpQ=
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a510ad5d-902f-4670-a8ec-08d7fdce817b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 21:32:47.3070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stJMFdW8QyoAcq8VVYj+VyTX+vL5L31Lh6DTibgYCIiS2ZRK72M8kzowQIi72hZNPicKKJs1WA0Cl930AmDFJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB2469
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_143256_839915_5A942625 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.141.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.141.55 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> Creating vmcore from sadump by makedumpfile fails with the following
> error messages since kernel-4.19 with PTI (Page Table Isolation)
> enabled:
> 
>   __vtop4_x86_64: Can't get a valid pte.
>   readmem: Can't convert a virtual address(ffffffffb2986000) to physical address.
>   readmem: type_addr: 0, addr:ffffffffb2986000, size:8
>   per_cpu_init: Can't read __per_cpu_load memory.
> 
> This is caused by the following patch:
> https://github.com/torvalds/linux/commit/c40a56a7818cfe735fc93a69e1875f8bba834483
> 
> The above patch clears _PAGE_PRESENT bit of __per_cpu_load memory, so
> __vtop4_x86_64 fails to convert the virtual address of the
> __per_cpu_load.
> 
> To fix this issue, this patch changes sanity check of per_cpu_ptr()
> to use address of the __per_cpu_load instead of data of the memory.
> 
> Signed-off-by: Kazuya Saito <saito.kazuya@fujitsu.com>
> Signed-off-by: Kiyotaka Nakamura <kiyo@fujitsu.com>
> ---
>  sadump_info.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/sadump_info.c b/sadump_info.c
> index 46867ce..72a077b 100644
> --- a/sadump_info.c
> +++ b/sadump_info.c
> @@ -1732,11 +1732,11 @@ per_cpu_init(void)
>  		return FALSE;
>  	}
> 
> -	if (!readmem(VADDR, SYMBOL(__per_cpu_load), &si->__per_cpu_load,
> -		     sizeof(unsigned long))) {
> -		ERRMSG("Can't read __per_cpu_load memory.\n");
> +	if (SYMBOL(__per_cpu_load) == NOT_FOUND_SYMBOL) {
> +		ERRMSG("Can't find __per_cpu_load symbol.\n");
>  		return FALSE;
>  	}
> +	si->__per_cpu_load = SYMBOL(__per_cpu_load);
> 
>  	DEBUG_MSG("sadump: __per_cpu_load: %#lx\n", si->__per_cpu_load);
>  	DEBUG_MSG("sadump: __per_cpu_offset: LENGTH: %ld\n",
> --
> 2.12.3
> 

Hi,

The patch looks good to me, applied.
https://github.com/makedumpfile/makedumpfile/commit/c9e078531efaffbe6f780221d40bdac21a84855b

Thanks,
Kazu


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
