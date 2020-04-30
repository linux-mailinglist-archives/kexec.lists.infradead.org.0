Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330451C00B4
	for <lists+kexec@lfdr.de>; Thu, 30 Apr 2020 17:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzmOE4TaABBQdOopqRXU/2PzZvNIOtr2+RoQj0gF7hI=; b=ah2fmUVkOEYMFW
	ylHiddUK0TA5ccOio3AegmKtKqmpGTXi3S73yXsSvdGAHYsjbejxyEnJRz9VASsqWNGckHJPyxbUM
	rXv1KJV2DgoIormFV/y0EnQ2CCng5Fg1kh9dLsjS7L4WarihowlDikRZrZ6CSBjwKM15uf+GD8kvl
	9ifNol1aeiNQKwVh9Aq8pluTfVoU7TlhgcAq3DGES4W1A5+/CxZCCmBtNd2LhfgcYYBUutgvXNLMW
	8Chx6JFxR5KuBDfQIWx5O9tZ/vR5SrnTdWHP5yX1sBaHQF0hjmI1+w2M0SA4iFqtApwx2HX8GJD+q
	4e6/ezuwHC+GV3y9UUlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBPJ-000454-R6; Thu, 30 Apr 2020 15:47:25 +0000
Received: from mail-eopbgr1410040.outbound.protection.outlook.com
 ([40.107.141.40] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBPG-00042P-KW
 for kexec@lists.infradead.org; Thu, 30 Apr 2020 15:47:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VeRejYA1bktFMMYqx3iM6iQ12gjcwvL+qj/a0+acinuRTKYPa7KCEN9sbQPHmeyvtVoWm++9WHIuRz+FykwhRcKRPfoc27NiOIooghoZm2K+WehXcgAqFXhn89YP61Awku12DlcSifFgR4y1MQrygRqN55WG1WB3MBj2FACD3KM0pBZsdYqHY4eIYX0gEc3E89F1hazDRgKgEzE1hLgjr8vNEz9GGilyMZy9YJuyRqG2ycvQMFGd89tFcvMV/aV+A6RAj3ESScqrtb938GuROxjuxvi/elzDV8tT+Wl/hZGLmUK+16zb1FfPLRqoLFtnLNkwTMPmdAuBgcCzj6OjGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r61Pfh5VEypa/7IK6Ays8yjMIzreyguYPdnm3MNL7DA=;
 b=M9B/+x9b0Pt+GNZ8m2ZddX2oMxXJRsJMXtHcf31G5OntfiIn3gwYGQj3B2IXfSWq6qpyF8U3fPaHa/cH+R3uguTd2jxq09UU/7OvtgVQs1woKsdhg73y4gAL2TVMDtXGkYKIParoW6+V66wJ3uZoVagMGCfpNCJzkbHyu42HL7DtSD08acd6R6PaMxgBFT/QRJ1XYFkLSdurYegJuZQ7X3/UHMmxTt5UGByHcXdf9tdgAtsaNAFx3lAS5QiuAzWi2ZsgcXpUUuM1Jitiji3WxQ6GC4jqK0iZe9s+z3CyTuOOy/JNdLe4EnkdhGEjJR7ubRX5b9ZhX8kOcHoTKR1n/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r61Pfh5VEypa/7IK6Ays8yjMIzreyguYPdnm3MNL7DA=;
 b=j50TlqSaejIjT1lmofEXRlTptQr6vwpjnOjSgWvc68jhHx/H9plV3ZvThTi8L7x14/TRJLvGEBP8AiD/EqndLxu/tOjfPowaBwqhT59ikDYOe6T8ty4xx8CiLUBUX1Q12j4/+CFtZtSr2+/4eWl1Dd/KVXL4UUIHUs1LBM2bwAE=
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com (52.134.241.23) by
 OSBPR01MB4486.jpnprd01.prod.outlook.com (20.179.181.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19; Thu, 30 Apr 2020 15:47:14 +0000
Received: from OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3]) by OSBPR01MB1991.jpnprd01.prod.outlook.com
 ([fe80::4ce5:bdba:f97c:bfa3%7]) with mapi id 15.20.2937.023; Thu, 30 Apr 2020
 15:47:14 +0000
From: =?iso-2022-jp?B?SEFHSU8gS0FaVUhJVE8oGyRCR2tIeCEhMGw/ThsoQik=?=
 <k-hagio-ab@nec.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: RE: [RFC PATCH 0/1] support lockless printk ringbuffer
Thread-Topic: [RFC PATCH 0/1] support lockless printk ringbuffer
Thread-Index: AQHWHm3SvJmh6m2hfE+KpvYJsWj0ZqiRwg4w
Date: Thu, 30 Apr 2020 15:47:14 +0000
Message-ID: <OSBPR01MB1991C1B07AC410A74CF7BBC0DDAA0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
References: <20200429213256.3691-1-john.ogness@linutronix.de>
In-Reply-To: <20200429213256.3691-1-john.ogness@linutronix.de>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linutronix.de; dkim=none (message not signed)
 header.d=none;linutronix.de; dmarc=none action=none header.from=nec.com;
x-originating-ip: [173.48.69.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be0dfbee-462a-40b4-4181-08d7ed1dc0f6
x-ms-traffictypediagnostic: OSBPR01MB4486:
x-microsoft-antispam-prvs: <OSBPR01MB448637A101CABB1E25F8110BDDAA0@OSBPR01MB4486.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0389EDA07F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vXDitoB8EuoRL/TBPwLlwb22NwvAO3/vE7IjSZgxC2ewPTyMmXqA/R112sreAyKR4cm7EL9PSYaf3ecpzajUHGr7dkkjANvYrydxgDls6grYkn5r0EJtIzee35WVzH8E3uWemmLfIEJok4mAUljqDeuUvHaWHcz574hHOlDRZe7GRRtRPQymduo9BDmclEzVhFZemKNcLCIoyJujDPW2cyGIY23f77g//VOI7cXO+O0aPV6BnT/fwqMXQRxRZJBjNT2bS4gB1dORRTeTThIg+A3Hz/4OKOUXaQCYrG5Iy9VhCFE/uYbKBmS4lCnF7r712grYqZKKTTkOqC/hQZhRw2RAIZ6zwKqu1emDTwE5arT1XUTxqOvuG9D519/IKZaoDUdkFvCyDa/akaFSG508vBMOJMDMK5cRIiBDKLpnZpgh4cn9GHYsOT0e/bySg17S
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB1991.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(366004)(396003)(346002)(136003)(5660300002)(33656002)(86362001)(6916009)(2906002)(85182001)(478600001)(55016002)(66556008)(64756008)(8936002)(9686003)(66446008)(71200400001)(54906003)(52536014)(66946007)(66476007)(26005)(76116006)(7696005)(186003)(316002)(8676002)(6506007)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ugJ847lFjGC31sZPzmK19x+PTiO/zHxSjjT5a54YFHkDWQQ2MLntFJ/XtJzA1Il4moRph8t4YV4Epff9MtzauEcvSht/4lNJH0enKfPfSuqDzpuVREtyHNEdw/2zl3Ub2veQ1lI8Pv+YIp+P4qG3CbsT+aFdXpZOS/a6eBFq4vou7WjmHjn9kjBpBww/ISwIm2i1xeDA89mdgJJ5dvE4VtSMx0VBrJrDb/6PWUtp+NSfNAW5VAeumRkPX204lLrXH/akui72Od/mhBx4NExjNvyXCVuBsWo4hPufH6yr4aV/YktS3KPjp1dJZ3q3SQUIft3D4cCRLamik3eS2vtdUx0YXhFRPaJlqBSXVR+XD0VQUH/P/NQEcz9nVvHoMDPYA2dO9YWTVtB6dItjvNb8uA2wu40zP0v9mL4y0og9ofR1yYu4SWi5a1lHnMiBq4zRqEoj3eFtK/df0OqYabyoE6N91Y/yY+DtIFk49th6K8QB7ErAVCpMB240TAuAJk3bwn+nnvC5XxtV7xPq4aZb7ZLmI0bLgVm+OIXekCnqKGjqbH6Fh8V+gDrvTJcdzta+8QCTwqi3RXr8m8ZWqxQ4o7P7ykJER94HcWYGmv/1Vn5qdu7bUeNQyXrc8B3eB83VViFpkVTX5q5o5BDMVgqLU6BkxH7zZ3704i2Pi9yI4XAkihrMY6FUsqwCnytFspUAWu0lsL/+HoRad5L5iYuB8AXcTndr5NvCjiOCpHLGSSEJQH89Z1o4+VO9US5EeDI0/h9qJsqdKnJZP14NNrsjmY5/XHfHk1/gxCR7keKDtQU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be0dfbee-462a-40b4-4181-08d7ed1dc0f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 15:47:14.2773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WDAMf6Vv9H3SBtioBj9hMqLi1YAFFt4Zm/pfIoEH1gGzbf0Pq+5opprsPzsxTCi8zduXdYbkjz5+h1qYcVPSng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_084722_732052_39759A64 
X-CRM114-Status: GOOD (  14.34  )
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Dave Anderson <anderson@redhat.com>,
 "crash-utility@redhat.com" <crash-utility@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi John,

> -----Original Message-----
> Hi Kazu,
> 
> Here is a patch adding full support for the new lockless printk
> ringbuffer as it is currently being proposed. Note that the latest
> version has not yet been submitted to LKML. I was waiting until I
> finished tests with crash(8) and makedumpfile(8).
> 
> The new ringbuffer will export all the necessary symbols, sizes,
> and offsets in VMCOREINFO.
> 
> Note that I created a separate printk.c for the iteration logic.

That's good.

> 
> Also note that I modified dwarf_info.c to support resolving
> typedefs of typedefs. This was necessary in order to support
> atomic_long_t and its "counter" member.

OK, I see.

> 
> I don't expect you to take the patch as-is, but I hope it can
> provide some positive ground work for moving forward.

OK.  It looks already well-considered.
Thank you very much for the patch!

Kazu

> 
> John Ogness (1):
>   printk: add support for lockless ringbuffer
> 
>  Makefile       |   2 +-
>  dwarf_info.c   |  36 +++++++++-
>  makedumpfile.c | 101 ++++++++++++++++++++++++++--
>  makedumpfile.h |  25 +++++++
>  printk.c       | 177 +++++++++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 333 insertions(+), 8 deletions(-)
>  create mode 100644 printk.c
> 
> --
> 2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
