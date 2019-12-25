Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C746A12A5E0
	for <lists+kexec@lfdr.de>; Wed, 25 Dec 2019 05:26:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dxqLwo+KfSIvX0S1EfplDM91tlqxkHmYo5OPFzOSob8=; b=AK7/6VtntMhhsp
	00kSroNTPTk87U9H9Jez8m2LzXoiUmIQPb2p2b8MVvYJ0Usn9voQogbKJ+nxBG4vYBz//FT0o/C63
	8dwe8CcYH4D3Df7aG6ZatMm4+NTrfYd+dljGalWHaLrw09ST+jlxu1jzWd3cT4M3GZTo+5shRRyoK
	gYh2LUQfqPEnhmms0dotRdCGNhUrnGzbC5MHkHKexNE5HNPxCgOhDEwYJwvBI1VIGB3w52opAbuXd
	+qbZpzHA2mmSgKV3NP6U/nq+Rv9UN9BVaEjv+cHMLO/6QuHslVPK9K6gPZ7+mgimmjmTXPNYlFvQL
	Y/LVmH50xqFYZnJo+o6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijyFd-0004cN-4s; Wed, 25 Dec 2019 04:26:25 +0000
Received: from esa18.fujitsucc.c3s2.iphmx.com ([216.71.158.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijyFZ-0004bs-Lk
 for kexec@lists.infradead.org; Wed, 25 Dec 2019 04:26:23 +0000
IronPort-SDR: hJr1EkTJd3g8xOwIKYsTgzqT5ZBi4+so2g0hHW62WCperZZ0pkfPJzP+yzPbk4fnaS4A6k8bR1
 J1awoLKngPWw521rtm+l1P9xJ/qAvZnpKzWUhMp3nYbsg7HX6wUdCSsRoQTJ94xFb9xvlt8hbp
 RkDFm4TO5QLqDBpuQP00c4gd1cbnCOeUZy0Dx+pVTl8aT2C409ugHsEA807MX5a+54dRJxJV+x
 Ri0NWWpYuxZarVC9OMNsiUA52yoJBiVOhQDB21Eqg/2mwVTRu7sriNKKUVLSbMD/iv9U+KUN7s
 iAM=
X-IronPort-AV: E=McAfee;i="6000,8403,9481"; a="8838285"
X-IronPort-AV: E=Sophos;i="5.69,353,1571670000"; 
   d="scan'208";a="8838285"
Received: from mail-os2jpn01lp2053.outbound.protection.outlook.com (HELO
 JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.53])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Dec 2019 13:26:11 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IYMhnZmmL4OPLsqiLANNwViuVtsaxecWqjtDqrQ2NWUu611QQbSLoXVOE4HWGe12mFxcWs0rHUMra5Uk74OGMP83J4SyKFSuC5P7/Ap8iT1dc9wIfPuGipKODnYwZYF84ongjPy6OZvVMscF+j8IAjtqj09Cbu3EEKUU7aoIDXyiFiEiQlBBjngP2LVQhsm2mGfRwlz6fUFrLtVR/o3xbopNseGPIP8a65U9562j36Q0yeDloj3Of2BCgr+KOIQ3yp7g2ggLzqgACQ2svcN0mNYlUIEEKCKPCnl66U3mdTOegYWdpfrq2PUa+UJ6+fxRieEYQSOzG8jEw+ITU3+y0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJMC0jMTcYoNky8ElygjGx7cCKKn/570txqJbbsPK5Y=;
 b=RMhR7foWWi5zyLKoqeHC9rNm2/MSCaBzqmAnRGk0oOboa/aGM84t8Sx0G2jsJlpd7VPtLYx+4aFxnvj/dV3ouAXHCd+1l0s6oRO5IOYH6sN/dzMcZADFuE6vrDhTkTRgGTjokgtW2hr+IY0c+b1E1XfKkaQst+ihF/GXRKBZQixaCt7sYgksv2hzA9k/oGp3Awy2xrT9Yq29ZN4BA3MaYBthqq2zqtGU9hhtrxeIKTwjT8GgLWjfI6NEVjxA2DRU0c8raVNL/NqAO6rmq2sy+IAux/zdhVF6Mm+goh84dpPwChEyoIhDqhTwcxvZ5994PawAIoV1yYm1TQSEi4geuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJMC0jMTcYoNky8ElygjGx7cCKKn/570txqJbbsPK5Y=;
 b=QK1shY08txA4Rfm3xzU41tdpeO5VsXQueeQDeOgqByLx/1DQN1LToXi+W2JuqpVh6/+yQTkXaX9tmGvoNczxuIVFCuXP92VXOudunAiEnRcVOyD3SmjEwOPNxbSdxXGC+omo/lMSPdqnNgJU5L3/gZH5WgbLZ6cCyC6okbtNAYY=
Received: from OSBPR01MB4006.jpnprd01.prod.outlook.com (20.178.98.151) by
 OSBPR01MB4215.jpnprd01.prod.outlook.com (20.178.5.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Wed, 25 Dec 2019 04:26:08 +0000
Received: from OSBPR01MB4006.jpnprd01.prod.outlook.com
 ([fe80::1c51:734d:bcc3:8626]) by OSBPR01MB4006.jpnprd01.prod.outlook.com
 ([fe80::1c51:734d:bcc3:8626%5]) with mapi id 15.20.2559.017; Wed, 25 Dec 2019
 04:26:08 +0000
From: "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>
To: "'dyoung@redhat.com'" <dyoung@redhat.com>, "'bhe@redhat.com'"
 <bhe@redhat.com>, "'vgoyal@redhat.com'" <vgoyal@redhat.com>,
 "'ebiederm@xmission.com'" <ebiederm@xmission.com>, "'mingo@kernel.org'"
 <mingo@kernel.org>
Subject: [RFD] kdump, kaslr: how to fix the failure of reservation of
 crashkernel low memory due to physical kaslr
Thread-Topic: [RFD] kdump, kaslr: how to fix the failure of reservation of
 crashkernel low memory due to physical kaslr
Thread-Index: AdW621PrfLWfeSyiSUOQtrg7XKymEQ==
Date: Wed, 25 Dec 2019 04:26:08 +0000
Message-ID: <OSBPR01MB4006AF8B4D355200E385850E95280@OSBPR01MB4006.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=d.hatayama@fujitsu.com; 
x-originating-ip: [210.170.118.186]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7396d895-2780-464e-78e5-08d788f29055
x-ms-traffictypediagnostic: OSBPR01MB4215:
x-microsoft-antispam-prvs: <OSBPR01MB4215BFC983D917D0CFF49DBB95280@OSBPR01MB4215.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02622CEF0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(376002)(346002)(39860400002)(199004)(189003)(2906002)(8676002)(52536014)(81166006)(4326008)(81156014)(8936002)(71200400001)(55016002)(33656002)(9686003)(186003)(85182001)(478600001)(5660300002)(66446008)(7696005)(26005)(6506007)(54906003)(110136005)(86362001)(64756008)(66556008)(66946007)(66476007)(76116006)(316002)(777600001)(491001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:OSBPR01MB4215;
 H:OSBPR01MB4006.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WUe62EucEbZDGxyPxFH0jhk+pghr5K28sQ28nREcLCcMqTSwtEzXkp9B+Jax3RuPuHi3cMhGCbfKRalDXx+hNgXbjmt0zu0vvH1QmDVbOOtwolcVkYWA4ASfxtNH+7+fqtz4dTqG5qBDQqtTrfnz77RqHuw60jj8f5RLtTCVlDuybnXfH/HXZo3dhDalv05rbzgsWyB/6zRFVp9sYTOsMENRNrDh2a2bcaw/lZSYS2mq3gB5Z037WAJ20SmgQKPfFFF5O2SCqWktsDMV6iZPS/1UVPf0YrIFbiqfSTLUxfZ5AtD59RcejZ5z4tKOXG0rba1yHpEEg2dUEniUmibFMUFfAWLwpgBs0r04FbParjqEStt6V2ES38JN4c3Y7EVFOhKBWpl3xY5N/71K8NMHNqvhfJhv3TGNyx5ZFW7zUCj5MXSzCaxRXViV44qn0cp0rfkIjDJH3yJUafSmAm3UQExMylVsyFrka2yjNHVQ+L1e9iRNxAmu/RPrYmPelJygoIhrwMRNN1TaVGhWYyroxA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7396d895-2780-464e-78e5-08d788f29055
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Dec 2019 04:26:08.0588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tds9fsteMFPnMuPmqVfgDvGjpJyove/3wWTl+RFc5otAWBcKEZEaLNkBLfJn9AAUMrJJA7RVfLFsk6cM19p1/4uQ7JmMYpHlgvm0dc4T1BY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_202622_075304_AF534775 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.71.158.38 listed in list.dnswl.org]
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
Cc: "'kexec@lists.infradead.org'" <kexec@lists.infradead.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Currently, reservation of crashkernel low memory sometimes fails due
to a sparse memory caused by physical kaslr with the following
message:

    Cannot reserve 256MB crashkernel low memory, please try smaller size.

Kdump needs low memory, memory area less than 4GB, e.g. for swiotlb.
Its size is 256MB for low memory by default. OTOH, physical kaslr
loads kernel images in a random physical address for
security. Physical kaslr sometimes choose low memory and sparse
there and as a result, reservation of crash kernel low memory could fail.

This failure seldom occurs on systems with large memory. For example,
on our system with 128GB, the issue occurs once in hundreds of
reboots. Although it doesn't occur frequently and can be avoided in
practice simply by rebooting the system, it definitely occurs once in
hundreds of reboots. Once the issue occurs, it's difficult for ordinary
users to understand why it failed. I'd like to fix this current behavior.

I'm now coming up two ideas but don't know what is best. Please
discuss how to fix the issue in better way.

1) Add a kernel parameter to make physical kaslr to avoid specified
   memory area

  This is the simplest idea I came up with first just like
   kaslr_mem_avoid=4GB-0, which is similar syntax to memap=, meaning
   that kaslr, please avoid to load kernel image into the region [0,
   4GB).

  It looks to me that this can be implemented easily by taking
   advantage of the existing code about mem_avoid mechanism in
   arch/x86/boot/compressed/kaslr.c.

  This mechanism doesn't lose security provided by physical kaslr if
   system memory is large enough.

  Demerit of this is that users need configuration. Automatic way is
   better if possible.

2) Add special handling for crashkernel= low in physical kaslr

  The second idea I came up with is to add special handling for
   crashkernel= low in physical kaslr, i.e. physical kaslr recognizes
   crashkernel= in kernel parameters and keep enough memory for
   crashkenrel.

  To guarantee that the memory area kept by the special handling in
   physical kaslr is used for crashkernel, it is necessary to mark the
   area to indicate to the crashkernel code executed after kernel
   runs. To implement this, I imagine introducing a new type of memory
   a kind of E820_CRASHKERNEL_LOW.

  My concern on this idea is whether its worth implementing such
   special handling in physical kaslr simply because I don't find such
   code in physical kaslr now.

3) Any other better ideas?

Thanks.
HATAYAMA, Daisuke


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
