Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D0214D1D6
	for <lists+kexec@lfdr.de>; Wed, 29 Jan 2020 21:22:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Tm2T17qnegDwhewZJ/x7/hueSqJ86PPNmkR2/xWAwg=; b=B9BW2bzejL7ROE
	09uWJfTOobqzqU93HVObisszDFgnYRuPo0z4GnEDYlLd14T0m68+40QfwBVtYmy+4OgMIF7zYeYzS
	tlq3FMh0oGV35CqU583PSAuyAUEdWTTyEg2J5xrg4FNqvCY5uTGkkJc3kCKak+hE8CuBWdrWaFK1l
	VAqcUt/4pgGYg8Vno6x9+MAZPtePOfS6U1PbKLlfPTD89Eh/J/hvZfttV2YmCFNU7Jm71cXgOjYE0
	rHot9ufZu8UuNxwtryXG4k2D62GbyAxDRbYCjt1PDeDq8L975tyLW3Jnl8kJj89+s/rKtKab8CReg
	yHft5/CUsBaB+G4w4yqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwtr4-0005XC-Ia; Wed, 29 Jan 2020 20:22:30 +0000
Received: from mail-eopbgr1320073.outbound.protection.outlook.com
 ([40.107.132.73] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwtr0-0005Wg-9G
 for kexec@lists.infradead.org; Wed, 29 Jan 2020 20:22:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHZwsAoAb9TRQ67AVmIJ7TVzno4xyMrebAZqfYGLHbP2yuNXnQnvswtVQ7Lj/kI7NNd6AqV/bxv9z+mklRMZjDp4NtZV4wZBJM74Dv1vlbv6/T0DkrSBL1Lbg4S99hGD8cJX4gNouGNiqYfeGd6Qw+LYm6Ul4WIwO8jljkzxWaO7UsduRUqWiJiRdwnGfD4XTwFIzTM4/095YupgQWMnGJZ4txzrKS/KseYbtxcVJiExfD9alVyeGeXHNLbpo5boR6KTtC9zRJtZNFLreKHqLpmOP8MLAr4zrdUV4yhNFiupPS5rSYzJEVUceUg6OQ1/6UQ18yU2+3R0ajQclyD1cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H6mDJZBaa8nHsByEhJhZFTG5qqOqnUn6/ynm3nxJQzI=;
 b=LWDEaPZPg9JthWE+Qhf4XQxAMtQvmwERvYDlpPjRYMQB3P9tPPCjjZ2nMRC4DlAEKOqglIWKCTVb3+zKERGyOkRFnR0czWx33KSM1slwbCfLLwv6H1x4brlzVgcMDbr8UwENrMB06nOQ4AyiVtjT+qfvSedSQvHIKNrGgKgiTarHIiEnbdIEaXrZftZ+SpXAoopkVEu22LBQxJATGbwSn70gcuTI4+27tbg+hsjJf8tACxlervrKOGde/NjKRVh9bms0wi7LlGeSKqT1N0n9hQWpqn7J2hWKINUJZobP5xC+xWssKPupsp8QToHtYisFuvUDqV2lstODF4LtTA08TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H6mDJZBaa8nHsByEhJhZFTG5qqOqnUn6/ynm3nxJQzI=;
 b=ogYq3gROfgwtkucieaLwyksGEtyfj1AN9kjuh5tCg6S+ht9sxAkWnsHoXch7bfZUyPG51dy9xbidZRwW43zTaP9onRIzw4G7Q4iHHPQpc60KxlhIyaQZstl0hKzev0Km9EKuMBz7gOJdelarKrj43oKpE2v8r3MdWBMLK/xCEz0=
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com (20.179.171.214) by
 TY2PR01MB3785.jpnprd01.prod.outlook.com (20.178.142.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Wed, 29 Jan 2020 20:22:22 +0000
Received: from TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89]) by TY2PR01MB5210.jpnprd01.prod.outlook.com
 ([fe80::99e3:8a09:840f:9b89%4]) with mapi id 15.20.2665.027; Wed, 29 Jan 2020
 20:22:22 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: Kairui Song <kasong@redhat.com>
Subject: RE: [PATCH] makedumpfile: Remove duplicated variable declarations
Thread-Topic: [PATCH] makedumpfile: Remove duplicated variable declarations
Thread-Index: AQHV1mZFcRgkIKmMAkGTC+oXT+fVI6gByH1ggAAVpwCAAAIN8IAAL6+Q
Date: Wed, 29 Jan 2020 20:22:22 +0000
Message-ID: <TY2PR01MB52100DD11A2F46ECAAB13B1DDD050@TY2PR01MB5210.jpnprd01.prod.outlook.com>
References: <20200129053713.622072-1-kasong@redhat.com>
 <TY2PR01MB5210BABA5B9D2F0ED7CD5ACADD050@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <CACPcB9eCAYr223C=A9j9MY2-v--rxgJ8CKJgNz0nVBC9U48MGA@mail.gmail.com>
 <TY2PR01MB5210949D4CCEAA1E82026CB5DD050@TY2PR01MB5210.jpnprd01.prod.outlook.com>
In-Reply-To: <TY2PR01MB5210949D4CCEAA1E82026CB5DD050@TY2PR01MB5210.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=k-hagio-ab@nec.com; 
x-originating-ip: [66.187.232.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 298ea3c5-a7a4-4f20-89f8-08d7a4f8f29b
x-ms-traffictypediagnostic: TY2PR01MB3785:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TY2PR01MB3785A984FF77BE2B72E9E7A1DD050@TY2PR01MB3785.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02973C87BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(366004)(136003)(189003)(199004)(6916009)(8676002)(316002)(4326008)(86362001)(52536014)(2940100002)(478600001)(66476007)(6506007)(66946007)(66556008)(64756008)(76116006)(33656002)(66446008)(71200400001)(5660300002)(186003)(7696005)(966005)(8936002)(81156014)(81166006)(2906002)(26005)(85182001)(9686003)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:TY2PR01MB3785;
 H:TY2PR01MB5210.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xJ11d3+ZyuW1wdIe27AE1lnpZVePWXz45bYsW8/5z5mqpimpDTRcroTYADG4K6SrPJvvyW0dWW+MBOyQ0rypycbIFv3TZh42en0rm4/QMCXeCITZKJigB6sC9AkkK7ED8IIPn68J8Rhog82DdZDbXIGi2anQ/e2EX3RgnpktuT1idYZMqbiQloHuCIU0DHL4dSJB042GBb2oqYmy0rMMCT7e03QW4+6mZJcNpQjDwpPEHF/8TQaE9seyg32SBesPxFIzUyhkpLyzdQZH6NUkpVwgdafZFE3fif1sptJqHSLaO1efmOsOghgzTmLO7yVqI7esh8agMoP5oP7OI5BlOjuDTYA/nJaPc1DPqlWvsm2mIBjkVMZlNBLdHEGbRoO22zm87wyGpZQW+0L7uHE42kXXpoVQCJ3QC+Trb6AWC9vl7xrBvGkjHWOf9lWOzbw28yxzWqmQ460PKZxi1T0D8fmsH4a2S5oRpvuoomYqpU/VDJbr/Ew68Jo0OD5qcy2twLMssySUugO+DXe/jvNw7g==
x-ms-exchange-antispam-messagedata: QxRBX+49F08zzg8153CTUVXBEfyGvATs0f2EfbaJucjY0yFSTmKD7ggkpVon5HAZ00nby6QtuQT0swVYb8XVKeytnmE+MY9sC9T7csVmcONnBhCB801SKTg7hwstaf/t3A9l66SRwixq/CqR/YCU4w==
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 298ea3c5-a7a4-4f20-89f8-08d7a4f8f29b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2020 20:22:22.4009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /venupstbfSFFuV0JKtMGaaFHQKr9Ocj3cvPKxwjLsHgE1We7m9y9++7Jv62eOBmxRH3In6Jafe7xIKsvSl+Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB3785
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_122226_389995_9494386C 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.132.73 listed in list.dnswl.org]
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> > -----Original Message-----
> > Thanks for the review, and yes it's definitely OK to change the patch
> > in this way. I just took a brief look at the code, and modified it in
> > the way that actually change nothing. And after a second look, indeed
> > they are never used as variable, only used as parameters of sizeof().
> >
> > So actually can we just get rid of them, and use sizeof(struct
> > parallel_info) and sizeof(struct splitting_info) instead? It may be
> > even simpler.
> 
> Yes, let's do it.  I thought to take the original intention and make the
> patch simpler, but thinking it again, each of them is used only two times,
> and as you say, it would be simpler.

Applied.
https://sourceforge.net/p/makedumpfile/code/ci/399f2c9a3acd5bd913e50a4dde52dee6527b297e/

I replaced "declarations" with "definitions", and added a little information
to the commit message.

(ah, this is the change.)
https://gcc.gnu.org/gcc-10/changes.html
| GCC now defaults to -fno-common. As a result, global variable accesses are
| more efficient on various targets. In C, global variables with multiple
| tentative definitions now result in linker errors.

Thanks,
Kazu


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
