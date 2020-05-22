Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778C01DDD0F
	for <lists+kexec@lfdr.de>; Fri, 22 May 2020 04:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rl/N/eF+WWLxq/R7MT0mSrE3MgE/IvJjXsoEQBDNeKg=; b=OiDEpMNMr1Jhir
	Oi4LLXy6sucNmFu5KMJfZqz1EBnP3bMBgSEjWr//MN4GcbohkoSygVm0882VYeJjvaU0D14YzpTPn
	fessd+VTCwaWykHFXgkR4yo17i+HOeXQiBNbaA0+U/00lZtR+ZliiGKGREYI5xoDNnZ4LMZZK30Vv
	To4cPG0dtBg9s/9e1CIAdB79JuDl3gtR6a2djlCVznp1krEn11JQm61HRB9TtLc8OnSEMC6k817kh
	jjTUAECBSW2FbWIHDuydFBWcTFW/kW7fJzQB1FmY83SpprU5/1JH3zVmFVM00H27zbtSaSlHCLqEr
	coJdHBENDRXXjBFf0k3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbxKj-0004eX-6W; Fri, 22 May 2020 02:22:49 +0000
Received: from esa15.fujitsucc.c3s2.iphmx.com ([68.232.156.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbxKf-0004dw-4w
 for kexec@lists.infradead.org; Fri, 22 May 2020 02:22:47 +0000
IronPort-SDR: PuqDQqevdHdRGfXcBWKXhm0wG5tKPBbkNN2Sgq5ZdoLjwzb7Tbg9p3k6efhY4vmJWZHip5GCcw
 6rxpWO1CNi7sLYJBviOmtYZhiL1CdU0zC8ee97P9EP3egv390pYPT6aJFC7msD3ZnCDU69/1VO
 n1hjVECeE62jnaosXmrJL70Qmi/8D3pxJd2xKg9a2+cQDLDRMb39LkS8ug72oCFZWAe+3xV55n
 s4rMMcT0C0dB8+Durhrk9Jki3ZPwGz7nTyC883wfMVY+vYpzgupaZK+gD/x+JsHFSaHZD8Z6Q8
 DC0=
X-IronPort-AV: E=McAfee;i="6000,8403,9628"; a="13434326"
X-IronPort-AV: E=Sophos;i="5.73,420,1583161200"; d="scan'208";a="13434326"
Received: from mail-ty1jpn01lp2054.outbound.protection.outlook.com (HELO
 JPN01-TY1-obe.outbound.protection.outlook.com) ([104.47.93.54])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 11:22:37 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YL7YJUEkUESGgbEQDK2V7KTD459rEfnltJ4d2m655+B2YNg/0ONKu7xR6XwU3Lyet7So8oz2hIUO3pVwBDcVG+p3YzCz/kJFsSbhilFwngtsUNUmrHJttpC4niHB//ra24jBtVV5PvUPJwzf8PA6v1zaKIbg75hfYyDrU4xFg8De5qcE4WVsmcsd7uSq9R7n36+ZJMhtRrfp+KeQ9E0H+fkBpZcuLtViKpOCTH2V9dO8pRCdQmDRAt43L9X3ucvXly2oC4oMkX4siYac5weRRArGVip3UGD4QoFbbSAacDZas2I/lvm3tJLrBqIghZdcISDjrUi4yQpdhjDllTHRDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9o5mWBBSpJdz6xU1vcd2DHu9jDvn/Eg+Fk5xYMX1TSI=;
 b=IqvDRL3U5b18K+xq//L3YQ2UZalEuvnEK68dsJZVrKirIbSJtOlFfiiAWAyrePIT4Kr15Mfbv38+nOOG3KETwu6fmc+IUKHhllIIYKKyRUIpTk1o8FQ30m/zp0ZYtFsFIRsFMOMhB3LwgXUDGQdAOwCuvKwCdHSXW27pQGD1VLp1c86Nu1VUtxpzMNCaCpHgKaIvxhqdXhux1pT3ZEL/vY9zh/nluGkO00kgPqT+2ipBk47QnGc9fSgsSHo/z++xNSlM7MfZvH5P/J9MS/ZcYdyKv9g7X0OmiqgB0aHRwUlcAaBq3mzs7C2r1VNPGiZLdFMmKkqSyDp9LX1Z44pW6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9o5mWBBSpJdz6xU1vcd2DHu9jDvn/Eg+Fk5xYMX1TSI=;
 b=Co5nBo245Il0W4Sg05tAiBOyuywLemZgDg/Yp8A91grij1r53/DRNwofRkolEPezEXGGlPJ2YtP9b7dz+/vuw1dAnK5pQxx8u5Ly4veYdvlD3CkdH/tfjHrqC/hvurh4okruYHJDAMAUE4IFP5q08qyBO+CjGtN/14cWAraB6fg=
Received: from OSBPR01MB5048.jpnprd01.prod.outlook.com (2603:1096:604:38::10)
 by OSBPR01MB4920.jpnprd01.prod.outlook.com (2603:1096:604:7d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Fri, 22 May
 2020 02:22:34 +0000
Received: from OSBPR01MB5048.jpnprd01.prod.outlook.com
 ([fe80::fd6a:da4:835a:8ae3]) by OSBPR01MB5048.jpnprd01.prod.outlook.com
 ([fe80::fd6a:da4:835a:8ae3%6]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 02:22:34 +0000
From: "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>
To: "saito.kazuya@fujitsu.com" <saito.kazuya@fujitsu.com>,
 "'kexec@lists.infradead.org'" <kexec@lists.infradead.org>
Subject: Re: [PATCH] sadump: Fix failure of reading __per_cpu_load memory
Thread-Topic: [PATCH] sadump: Fix failure of reading __per_cpu_load memory
Thread-Index: AdYvPkyht67VsqqWQBO8rYgOfFEcaQAoNJqK
Date: Fri, 22 May 2020 02:22:34 +0000
Message-ID: <OSBPR01MB5048B8A9DFBA861A3A9AE0E795B40@OSBPR01MB5048.jpnprd01.prod.outlook.com>
References: <TYAPR01MB41279E6F5CDD8350F13BA38F84B70@TYAPR01MB4127.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB41279E6F5CDD8350F13BA38F84B70@TYAPR01MB4127.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: fujitsu.com; dkim=none (message not signed)
 header.d=none;fujitsu.com; dmarc=none action=none header.from=fujitsu.com;
x-originating-ip: [210.170.118.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1a0ffac-780b-49b0-392e-08d7fdf6fd0d
x-ms-traffictypediagnostic: OSBPR01MB4920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB4920A73303A40F39307DAAD695B40@OSBPR01MB4920.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JLqMEyI26qQpOCuislcScTz8P/kDgG/uUPDLhXOMrAmnSr2cJGXAbQOdmN6HC4BiAm82FMZVRB4gAOApTPrqsWCtjhfeg9NkXHGeNn6IfgTD+KL7R5+xLo23tlj5QtXuPXgqJTBaqwdGpUgr5FCTokI4JNZ8UpYZW3SKUUpVmnShnxFhGlV8mrT3chTHYQAjBd6k67IW2VreiN+v42yh/+2+lzsBXUBTexsvBM0O2/JJO3ku+ij3EQGaQhcROrKIYbhpa+odD1oAesTHCc1KeWN26ULzn2js0Wl97fIlmC+0MeqvL1sgIVKinB0S0qE07miZ3fnbTDKGMuwdwcJHGF5bm9TzykYEGVvFqtGN86+AMlrwr7vw5SbG1t/XYzIBZOViO+kGLsQ7IVQwFJHrE3bnqqAmVNSgJHBGHdBTGvgavAOd9zeNCibavz5LA1H622ssRZsNLg8RJplZ1v8+XRd/GztWOpJsTGj2fMY4hjQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB5048.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(478600001)(52536014)(66476007)(7696005)(6506007)(66946007)(110136005)(26005)(316002)(186003)(33656002)(76116006)(66556008)(2906002)(66446008)(71200400001)(85182001)(9686003)(966005)(8936002)(5660300002)(64756008)(55016002)(8676002)(86362001)(777600001)(491001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: m0ck/xO4LfafaCPWjoJbW6sZw/3373LUw18MsiReLh+S1Y6BcdEEKAI0x0IqS0UdUg/Hc2Bh1dlYy1X6ryyPUlcmdWZ7CCfNkoVfU55/6+Hyswckd/ZmfdFgrnlUNtZKzRNP+Wf/JsjueW1dUlNENq8c3HHBtGLbbI5XauhkWTXfck4n1Z3//Y5eUzY6a5vj/mMrE6ntAIizrG7CPZhfozCqJK1rMRBohIxX9amICg9hKXS/q59wty+ShYQv/Kr6l0Ye/bx0b4KFU3k6+uMneU1tmk9K2TSBzxzw/4EFZZW7fsPZ0Ft8laASLn2rNSREIavINuc0SApINAGZIQpfnvVRPwqPd5W6kah6IDGkJGS+xkryFEKBzQdFPILn5Tsg1z1kXOUnzL+uspLt78BLzdAJiOVSCNXCv+rj3/yVbaXjVEFYCc9cc9F1K9rAQ1/xfqb278oZ9w21HVM7KvenejhaCyDOPlxTy5SICS0Nr4a3ewKWmNwrPqeIHt4eB+uX
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1a0ffac-780b-49b0-392e-08d7fdf6fd0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 02:22:34.4199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ogU1agjwQYNJeVpD4I1VgklHwspk+zSwP2w5AqXCCi84i/KYhghOteK/NbXd4MrPOqZILS8AyF89u1pcWSMmJNWXpGu4BYs74ZY9yDtBG1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_192245_578720_07062EBD 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.156.107 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Saito-san,

Thanks for your patch.

I think it better to remove __per_cpu_load code, which is unnecessary.

________________________________________
差出人: kexec <kexec-bounces@lists.infradead.org> が saito.kazuya@fujitsu.com <saito.kazuya@fujitsu.com> の代理で送信
送信日時: 2020年5月21日 16:15
宛先: 'kexec@lists.infradead.org'
件名: [PATCH] sadump: Fix failure of reading __per_cpu_load memory

Creating vmcore from sadump by makedumpfile fails with the following
error messages since kernel-4.19 with PTI (Page Table Isolation)
enabled:

  __vtop4_x86_64: Can't get a valid pte.
  readmem: Can't convert a virtual address(ffffffffb2986000) to physical address.
  readmem: type_addr: 0, addr:ffffffffb2986000, size:8
  per_cpu_init: Can't read __per_cpu_load memory.

This is caused by the following patch:
https://github.com/torvalds/linux/commit/c40a56a7818cfe735fc93a69e1875f8bba834483

The above patch clears _PAGE_PRESENT bit of __per_cpu_load memory, so
__vtop4_x86_64 fails to convert the virtual address of the
__per_cpu_load.

To fix this issue, this patch changes sanity check of per_cpu_ptr()
to use address of the __per_cpu_load instead of data of the memory.

Signed-off-by: Kazuya Saito <saito.kazuya@fujitsu.com>
Signed-off-by: Kiyotaka Nakamura <kiyo@fujitsu.com>
---
 sadump_info.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/sadump_info.c b/sadump_info.c
index 46867ce..72a077b 100644
--- a/sadump_info.c
+++ b/sadump_info.c
@@ -1732,11 +1732,11 @@ per_cpu_init(void)
                return FALSE;
        }

-       if (!readmem(VADDR, SYMBOL(__per_cpu_load), &si->__per_cpu_load,
-                    sizeof(unsigned long))) {
-               ERRMSG("Can't read __per_cpu_load memory.\n");
+       if (SYMBOL(__per_cpu_load) == NOT_FOUND_SYMBOL) {
+               ERRMSG("Can't find __per_cpu_load symbol.\n");
                return FALSE;
        }
+       si->__per_cpu_load = SYMBOL(__per_cpu_load);

        DEBUG_MSG("sadump: __per_cpu_load: %#lx\n", si->__per_cpu_load);
        DEBUG_MSG("sadump: __per_cpu_offset: LENGTH: %ld\n",
--
2.12.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
