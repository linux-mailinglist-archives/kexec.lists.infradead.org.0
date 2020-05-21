Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D021DC76C
	for <lists+kexec@lfdr.de>; Thu, 21 May 2020 09:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7wOKPAqCZMghzKMC8XKN2QCQhjAIGA0VGSkOakr4J4I=; b=Z+UFQ2v+ElMW2D
	1eblFMS61ySsU/ovMJoZK6Fdd/Lxkcpmaj8xkA3XPWP/xtElZjOKd2DHa3AAvmcDIKouuFfJA2iyM
	wLZULvGlGwqKQNFYB1rnZq+GYMdQmGZB8EmauONyubN5Qr1ahqhPNlc5becfiF2eBTxRqyKZiYB4R
	4Vl6mkqd3cLv9Yun51ncTcnQaVA6I4/iivjtcYyo+gp8H+7+s+O+tRoEcUIcedLssXwoxQNiRPZSX
	cPNjaqiWLoQ4jA6KmoKlduXjTn1jRPw3x7G+KsG7D5H0CVd1x7pw0HRZ+dftrOpaF9GMrxtQJRBXw
	rIohm57ALfdQzua3W+AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbfQR-0008QI-N1; Thu, 21 May 2020 07:15:31 +0000
Received: from esa16.fujitsucc.c3s2.iphmx.com ([216.71.158.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbfQN-0008PL-Lr
 for kexec@lists.infradead.org; Thu, 21 May 2020 07:15:29 +0000
IronPort-SDR: r3M1F7i7NkfkExGGmwK3N9ZG4wg9o93m7Wz77r5btkRVVTQdk89i1LeaX43ql0AgkQWBSBW7Il
 00RrzToM9CEo8sZKnyiOMaDDGEN2WznCPw4hR6KM6x6BIU55F6Ra+cXFXRLH+XtT60aNzwcglK
 MYa1B8zkXYnKL0iOvyilihYfEg9lvW2CO9renyYE5KoS1BzcsTgqhMFPbAw0oUX2e/Vny7wuyz
 6pyXIIHOpez/eT8Yzpa8INk3dtGs96iBe4I0GYA7+AZie+72m5P5kf1qlW42/tAnKJ0CWU+cQl
 NM4=
X-IronPort-AV: E=McAfee;i="6000,8403,9627"; a="13570480"
X-IronPort-AV: E=Sophos;i="5.73,417,1583161200"; d="scan'208";a="13570480"
Received: from mail-os2jpn01lp2058.outbound.protection.outlook.com (HELO
 JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.58])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 16:15:23 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ez7a2YkYqYVXVgigK1RVV1SZbqgXkljqupE+7NOJi5p+QDHruVReOdD921zVocEqocwm8LQQvcT80IsjATdaxeCNHvAkQPjx139kN4Udg+ucAhkDZY2m4ZbNS528JJk83+g2nsMBlmylr+sTW5pfmt0Y0cvXvjgv6ROHFUpdUMWGIjzJvMKCyYFa14/U6KZgOe0tIq6RMF++NBPxsLucaJFaVs5P2Q8CRsxSAXR+WaZhhtGMt8wXBjuqe5pAsLxhj+wEYvXBMLf2o0RQ8ZcXn5zMtmuEQzCRIZrtTKFUw+gaoTN//5wv7YstdQiwITbLPScPBiEsXrWv1t4xa2TM8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R0UK0Wy+FDiulNaRPY0pRuAHLRJbKUijx4OnJlYOkHk=;
 b=MfnLX37Cg2l9tQTXtIJrkI3j4u9zGqaEuMh073Qhses2WJZy4mPNs4bDA9Jwq+nnOupg7J3vHA+0UnjwjAfvJ3QxwcF51hW5PopkGrxfysUOY8xBI9VMOVFsCQ5nuVRm6nCQdrhvhtUar5Oe41oGawZXnWJrrPUeGOd5us6IwgwLfV5NFEr+ypriA2OprKAweBHfoPXTsWRkFwL6VuKGh4KPkq/d3Vv+R9FQZhKkLEGjcoEZePNiu1DJTm812YuC7PPUc3pOBmWsQkJLNkKFLeZ9NnHA4WVkS8zBQSvdpCN8xbnKZiP8/vIVlBJ4LO2+s2Esh6tgyc7Rr7Pv8cIDfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R0UK0Wy+FDiulNaRPY0pRuAHLRJbKUijx4OnJlYOkHk=;
 b=pFISbdlI5dG6qrqJJQ2KyvhOWmomJUOYeMJV0Ez4b4XSrS2O6nlY+HhsGQVCjsRvXPudIDegKQz2W3uUfH1/1D3ilPAQw0tEY66sHOXEPAiZKTyuubaTfFJjAehyIj2+0hDhPEABfQc6MLg9ZqWp5iiZm1GPp75dc89IFTDLJLU=
Received: from TYAPR01MB4127.jpnprd01.prod.outlook.com (2603:1096:404:c5::15)
 by TYAPR01MB3293.jpnprd01.prod.outlook.com (2603:1096:404:87::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Thu, 21 May
 2020 07:15:19 +0000
Received: from TYAPR01MB4127.jpnprd01.prod.outlook.com
 ([fe80::2499:3f95:dc40:7e25]) by TYAPR01MB4127.jpnprd01.prod.outlook.com
 ([fe80::2499:3f95:dc40:7e25%4]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 07:15:19 +0000
From: "saito.kazuya@fujitsu.com" <saito.kazuya@fujitsu.com>
To: "'kexec@lists.infradead.org'" <kexec@lists.infradead.org>
Subject: [PATCH] sadump: Fix failure of reading __per_cpu_load memory
Thread-Topic: [PATCH] sadump: Fix failure of reading __per_cpu_load memory
Thread-Index: AdYvPkyht67VsqqWQBO8rYgOfFEcaQ==
Date: Thu, 21 May 2020 07:15:19 +0000
Message-ID: <TYAPR01MB41279E6F5CDD8350F13BA38F84B70@TYAPR01MB4127.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-securitypolicycheck: OK by SHieldMailChecker v2.6.3
x-shieldmailcheckermailid: e3fade19c1c44497b66ec8716c53799a
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=fujitsu.com;
x-originating-ip: [210.170.118.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f7d008e-c09b-4c48-87e8-08d7fd56b869
x-ms-traffictypediagnostic: TYAPR01MB3293:
x-microsoft-antispam-prvs: <TYAPR01MB32938E7AEC3637F2EEECE63A84B70@TYAPR01MB3293.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:302;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iTjIk0RA7/BaZ1bWkooL3IfqRvgDtUwDBVLJMkDyOanI4Q6JbWu+JDmv3FvmE7quCr7IL5VHMoQ+uvbxhM+JV/EhKmUQGrA9POvwsXsem/ZucusI9NtxaplI5snIblNV1KYGFy+wUFvFOcFTuYVs5p/IOZlkOIiKRmae7E/QJrTmcsuG536AnicpCZX3DAjrJWwkufLlSN732M+7wxgFCb3FiKjhR7wi416fltQu007Oz6Dshj0/AGsEvaF3N6y3HYOz3DrHnEt1qR6GN+TpgYWf2gJjKtnq85vfE4KhUvgE2rh2aXGUduU4ubZ5/ovbxH/N93R2HqHPvaoXQQOPAHJde/4QOpA1UDlxBsrkkWLLRFBkDqfrjynpRcQsC2qDR0KV9BcR2lvs60B5kl3ymwtvMOgaXuJIj60Zy2iBz3xHzdRma7ssEg5+h8ZfsP1q2Ejhwn0GZ4vwRWvLe5O9btHvxK3KP22hABEAE686xDjqfE9ov0iaTBz4Qfk2iwNEUgdCgROvPBukmwf3DjwWbrxjgo4pu7uao+uceRhF94zNkC76rDPlI2qaAa+UPEYKmx/fZ4wckuGfLHGrVVsScg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB4127.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(396003)(136003)(346002)(39860400002)(86362001)(66556008)(6916009)(64756008)(66446008)(76116006)(33656002)(8676002)(8936002)(7696005)(66476007)(66946007)(2906002)(26005)(186003)(71200400001)(9686003)(52536014)(316002)(85182001)(966005)(6506007)(478600001)(55016002)(5660300002)(777600001)(491001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: YDTBti4wdJ0QnGZvBBhOtB9dQmkO/fuRkUCixtBIbdVhbIDmQPPkqA+3MImSRIYmG+548xx6KB/mAYhhYCSpOFyWjuSPIhqcYut0F2K/PFMVVUfLsAVaUNNImq1QKSd2oJA0qQdAAiJigp7Yqz42Ge7Frz7fzqTlu6zaa3K0fnGfn0VnTmy/ToQDsyRrUHMCcTkt+A6/8yQ67et5ltgjInI+ExraEQihsUWVECxAQ/O4mlwJ90w2Rni5lS8teAZ0PvSVRmaNYQkgBgmvxkdf/OVWbP8TcLXxjWiTKE0KOPF/48/+kIoy9L2YIor0yHvXd21RXZ+IcxS2kYVhXgzYAxE5NjrDTgchaajRIC5EWdS5QJmHehGhaoJABq1LsX12Kc/tfM4ejZ0F6imIcZu0+pngpSAB5zx/I4DJuD5dXd+ShWO5t1W5oQf4h8HqDNFds1WQWyEhvyHXRbtbfWwfdyDGQKae6ZBxFuum5KZFydk27xvQfHTt4rTKr2XUkfQX
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f7d008e-c09b-4c48-87e8-08d7fd56b869
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 07:15:19.8103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WISOvP1gjN1fOM1zRY7jJ2hh2AJqD6UI02hlN+MlxLjDS6dPzJWc2+avOASv5PB10tySXk1wkOtgyyTXmHuguMoBaBOIRAdLrrepzXOEFcA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3293
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_001528_114945_D84E1752 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.158.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

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
 
-	if (!readmem(VADDR, SYMBOL(__per_cpu_load), &si->__per_cpu_load,
-		     sizeof(unsigned long))) {
-		ERRMSG("Can't read __per_cpu_load memory.\n");
+	if (SYMBOL(__per_cpu_load) == NOT_FOUND_SYMBOL) {
+		ERRMSG("Can't find __per_cpu_load symbol.\n");
 		return FALSE;
 	}
+	si->__per_cpu_load = SYMBOL(__per_cpu_load);
 
 	DEBUG_MSG("sadump: __per_cpu_load: %#lx\n", si->__per_cpu_load);
 	DEBUG_MSG("sadump: __per_cpu_offset: LENGTH: %ld\n",
-- 
2.12.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
